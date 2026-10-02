<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# How to bring this repo up to date

**For:** whoever holds this repo later (you, a forker, or their AI), a year from now or
whenever. The data here was pulled on the dates stamped in each file. Recalls get issued,
prices drift, tire models get replaced, forum consensus shifts. This folder tells you
**what to re-check, where to look, how, and in what order**, so the next update is as good as
the first build.

> **AI quick start:** read `/CLAUDE.md` → `/.file-structure.md` → `/memory.md`, then do
> [`checklist.md`](checklist.md) top to bottom. Every source and its quirks are in
> [`sources.md`](sources.md). Log what you did in [`changelog.md`](changelog.md).

---

## Who / what / when / where / why / how

| | |
|---|---|
| **Who** does this | The repo owner or any contributor, usually by pointing an AI at this folder. Anyone who can open a PR. |
| **What** goes stale | (1) **Recalls**: new campaigns, changed remedies. (2) **Prices**: parts, labor rates, tire prices. (3) **Tires**: models replaced (e.g. "Pilot Sport 4S" → successor), new test results. (4) **Known issues**: new failure patterns as cars age, new TSBs. (5) **Warranty/program terms** for newer model years. (6) **Forum consensus**. |
| **When** | **Recalls: every 3 months** (fast, scripted). **Prices + tires: every 12 months**, or before you buy tires. **Known issues + forums: every 12 months**. **Immediately** whenever a recall letter arrives or a big new issue shows up on Bimmerpost/Reddit. |
| **Where** to look | See [`sources.md`](sources.md): NHTSA API, BMW NA documents, Tire Rack, FCP Euro / ECS / Pelican parts pricing, RepairPal / dealer service-price pages, Bimmerpost G20 forum, Reddit r/BMW and r/BmwTech. |
| **Why** | A stale price or a missed recall is worse than no data: people act on it. The date stamps let readers judge freshness; this playbook keeps the stamps honest. |
| **How** | [`checklist.md`](checklist.md). Short version: run the NHTSA script → reconcile `recalls/` → re-price the cost tables → re-check tire lineups → skim forums for new issues → bump date stamps only on files whose facts changed → log it. |

## Ground rules while updating
1. **Don't rewrite what's still true.** Verify, then bump the stamp only if a fact changed.
2. **Keep the format.** Use `templates/item-doc.md` section order and the `Mmm--DD--YYYY` stamp.
3. **Keep it public-safe.** Your own car, location, and quotes go in `.memory` / `private/`
   (gitignored), never in shared files.
4. **Cite with dates.** Every new number gets a link and "(checked Mmm--DD--YYYY)".
5. **Prefer primary sources.** BMW / NHTSA / ZF / tire maker > Tire Rack tests > forums.
6. **Prices:** replace a range only when the new evidence is from the last 12 months. Say what
   year the range is in the table header.
7. **Raw data in `data/` is regenerated, not hand-edited.** Rerun the script.

## Files in this folder
| File | Purpose |
|---|---|
| [`checklist.md`](checklist.md) | The ordered refresh procedure |
| [`sources.md`](sources.md) | Every source: what it's for, URL, how to query, known quirks |
| [`changelog.md`](changelog.md) | Log of every refresh, newest first |
| [`scripts/refresh-nhtsa.sh`](scripts/refresh-nhtsa.sh) | Re-pulls NHTSA recalls + complaints into `data/nhtsa/` |
