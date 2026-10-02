<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# Refresh checklist (do in order)

Copy this list into your `changelog.md` entry and tick items as you go.

## 0. Orient (5 min)
- [ ] Read `/CLAUDE.md`, `/.file-structure.md`, `/memory.md`.
- [ ] Read the newest entry in `changelog.md`: what was last refreshed, when.
- [ ] `git pull`; make a branch `refresh-YYYY-MM`.

## 1. Recalls (scripted, ~10 min). Do this every 3 months.
- [ ] `bash .update-the-repo-info/scripts/refresh-nhtsa.sh`
- [ ] Compare printed campaigns against the table in `recalls/README.md`. Add new rows (campaign,
      model years, component, plain-English risk, remedy, park-outside flag, date).
- [ ] If a new recall is serious (fire, loss of steering/brakes, park-outside), also add a line to
      the top of `/README.md` "Heads up" box.
- [ ] Update the pull date in `data/README.md`.

## 2. Known issues (~1 hr). Every 12 months.
- [ ] Skim complaint components from the script output; read any new cluster in the JSON.
- [ ] Search Bimmerpost G20 forum + r/BmwTech for "<issue> 330i" on the top ~10 known issues and
      for new patterns at the current typical mileage of these cars (they age ~12k mi/yr).
- [ ] Add/adjust `known-issues/<issue>.md` (copy `templates/item-doc.md`) + the ranked index.

## 3. Prices (~1–2 hr). Every 12 months.
- [ ] For each `maintenance/*.md` cost table: check DIY parts (FCP Euro, ECS Tuning, Pelican Parts,
      RockAuto, Amazon for wipers/filters), independent and dealer pricing (RepairPal estimator,
      dealer online service menus/specials, forum "what did you pay" threads within 12 months).
- [ ] Update `where-to-service/README.md` labor-rate ranges.
- [ ] Update the summary cost table in `maintenance/README.md` so it matches the item docs.

## 4. Tires (~1 hr). Every 12 months, and right before buying.
- [ ] Tire Rack: for each OE size in `tires/oe-fitments.md`, confirm each model in
      `tires/tire-comparison.md` is still sold; note replacements (makers rename every ~4–6 yrs).
- [ ] Re-price per tire; check current rebates; check newest Tire Rack / Car and Driver / Tyre
      Reviews tests for the categories.
- [ ] Update `tires/README.md` quick picker if the #1 picks changed.

## 5. Warranty / programs (~15 min). Every 12 months or when newer model years are added.
- [ ] Newer model-year warranty booklets → `official-docs/bmw/` + index row + checksum.
- [ ] Re-check `vehicle/warranty-and-coverage.md` (CPO terms, Ultimate Care, emissions lists).

## 6. Close out
- [ ] Bump the `Last updated on` stamp **only** on files whose facts changed.
- [ ] Add a dated entry to `changelog.md` (what changed, what you checked and found unchanged).
- [ ] `git status`: confirm `.memory` and `private/` are NOT staged.
- [ ] Commit + PR: "Data refresh Mmm--DD--YYYY".
