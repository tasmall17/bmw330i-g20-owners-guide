<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# data/: raw, machine-readable pulls

Feed these to scripts or AIs. **Don't hand-edit.** Regenerate with the command listed, then
reconcile the human docs (`recalls/README.md`, `known-issues/`).

| Path | What | Source | Produced by | Last pulled |
|---|---|---|---|---|
| `nhtsa/recalls-330i-<MY>.json` | Every NHTSA recall campaign naming the BMW 330i for that model year (summary, consequence, remedy, units affected, park-outside flag) | api.nhtsa.gov `recallsByVehicle` | `bash .update-the-repo-info/scripts/refresh-nhtsa.sh` | Oct--02--2026 |
| `nhtsa/complaints-3-series-<MY>.json` | Owner complaints filed with NHTSA for the BMW 3 Series (all 3 Series variants that year, not only 330i; filter by text) | api.nhtsa.gov `complaintsByVehicle` | same script | Oct--02--2026 |

### Notes
- **Model-name quirk:** recalls use `model=330i`; complaints use `model=3 SERIES`. NHTSA answers
  HTTP 400 for years it has no data for; the script skips those. (memory.md §4)
- Complaint volume is small (≈8–53/yr) and self-reported. Use it to spot clusters, not to
  estimate failure rates.
- A recall naming a model year does **not** mean every car of that year is included. Only a
  VIN check (nhtsa.gov/recalls or a BMW dealer) answers that.
