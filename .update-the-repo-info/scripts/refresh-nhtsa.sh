#!/usr/bin/env bash
# Re-pull NHTSA recall + complaint data for the G20 330i into data/nhtsa/,
# then print every recall campaign so you can diff it against recalls/README.md.
#
# Usage (from repo root):   bash .update-the-repo-info/scripts/refresh-nhtsa.sh
# Needs: curl, python3.  No API key.
#
# Gotcha (see memory.md §4): recalls API wants model=330i; complaints API wants model=3 SERIES.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
OUT="$ROOT/data/nhtsa"
mkdir -p "$OUT"
FIRST_YEAR=2019
LAST_YEAR=$(( $(date +%Y) + 1 ))

# fetch URL -> file, only replacing the file on success (NHTSA answers HTTP 400 for model
# years it has no data for yet; that's normal for the newest years, so just skip them).
fetch() {
  local tmp; tmp="$(mktemp)"
  if curl -fsS "$1" -o "$tmp" 2>/dev/null; then mv "$tmp" "$2"; else rm -f "$tmp"; echo "  (no data yet: $(basename "$2"))"; fi
}
for y in $(seq "$FIRST_YEAR" "$LAST_YEAR"); do
  fetch "https://api.nhtsa.gov/recalls/recallsByVehicle?make=BMW&model=330i&modelYear=$y" "$OUT/recalls-330i-$y.json"
  fetch "https://api.nhtsa.gov/complaints/complaintsByVehicle?make=BMW&model=3%20SERIES&modelYear=$y" "$OUT/complaints-3-series-$y.json"
done

python3 - "$OUT" <<'EOF'
import json, glob, os, sys, collections
out = sys.argv[1]
campaigns = {}
for f in sorted(glob.glob(os.path.join(out, "recalls-330i-*.json"))):
    year = os.path.basename(f)[13:17]
    try:
        results = json.load(open(f)).get("results", [])
    except json.JSONDecodeError:
        continue
    for r in results:
        c = campaigns.setdefault(r["NHTSACampaignNumber"], {"years": [], "r": r})
        c["years"].append(year)
print("\n=== Recall campaigns naming the 330i (compare to recalls/README.md) ===")
for num, c in sorted(campaigns.items(), key=lambda kv: kv[1]["r"].get("ReportReceivedDate", "")[-4:] + kv[0]):
    r = c["r"]
    print(f"{num}  MY {','.join(c['years'])}  {r['ReportReceivedDate']}  {r['Component'][:50]}")
print("\n=== Complaint counts by model year (top components) ===")
for f in sorted(glob.glob(os.path.join(out, "complaints-3-series-*.json"))):
    try:
        rs = json.load(open(f)).get("results", [])
    except json.JSONDecodeError:
        continue
    comp = collections.Counter(c.strip() for r in rs for c in r.get("components", "").split(","))
    print(os.path.basename(f), len(rs), comp.most_common(5))
EOF
echo "Done. Now update data/README.md (pull date) and recalls/README.md (new campaigns)."
