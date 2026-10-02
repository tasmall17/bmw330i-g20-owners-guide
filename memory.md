<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# memory.md: Project Notes for AIs

> **Read this first, every session** (after `CLAUDE.md` and `.file-structure.md`).
> Public-safe running memory: context, settled decisions, and problems already solved, so no
> session rediscovers the same thing. Owner-specific notes live in the gitignored `.memory`.
>
> **Maintenance rule:** solve a non-obvious problem → append to §4. Owner settles a question →
> append to §3. Keep entries short; delete wrong entries rather than stacking corrections.

---

## 1. What this project is
A public, owner-written knowledge base for the **BMW G20 330i and 330i xDrive** (US market),
built around a **2022 330i xDrive** (B46/B48 2.0T, ZF 8HP, xDrive). Most content applies to all
2019–2025 G20 330i/330i xDrive. Model-year differences are called out per doc.

Two layers:
- **Step 1, public base (this repo):** general explainers, pricing ranges, official docs, data.
- **Step 2, private overlay (`.memory`, `private/`):** the same knowledge applied to one owner's
  VIN, location, dealer quote, and mileage. Never committed.

## 2. Status
- Oct--02--2026: **Step 1 base complete** (71 public files; private files verified gitignored in a
  throwaway repo). Pushed to **https://github.com/tasmall17/bmw330i-g20-owners-guide** (public). Step 2 started. Owner's manual PDF
  **not yet in `official-docs/`** (see §4).
- Research gaps to fill next refresh: **engine mount** pricing/failure data (G20 B46/B48), differential
  fluid spec by VIN, CBS reset without a tool, 2022 maintenance booklet, newer SIB 01 03 24 revision.

## 3. Decisions
- **Date stamp format is `Mmm--DD--YYYY`** (e.g. `Oct--02--2026`), top-right, every doc. Owner's spec.
- **Price tiers always DIY → Independent → Dealer**, national ranges, with time.
- **Private data lives in `.memory` + `private/` + `service-records/`**, all gitignored. Public docs stay general.
- **Explainer docs follow `templates/item-doc.md`** (TL;DR/ELI5 → how much it matters → forums →
  cost & time → when → DIY verdict → watch out → sources).
- **Official PDFs are committed** under `official-docs/` by default; a commented-out `.gitignore`
  line exists if a takedown risk ever needs to be avoided (see `official-docs/README.md`).
- **Raw shop paperwork goes in `service-records/` (gitignored)**, named `YYYY-MM-DD_<shop>_<what>.<ext>`.
  Public docs may use **anonymized** price points from it (no shop/staff/city/VIN/owner).
- **Repo is Step 1 (public base) → owner pushes to GitHub → Step 2 (private overlay)** tailored to
  the owner's VIN/area via questions. Don't mix Step 2 content into public files.
- **Two folders** (Oct--02--2026): public working copy holds zero personal files; the owner's personal
  clone holds `.memory`/`private/`/`service-records/` with push disabled. (`.file-structure.md` §2a)
- **Commits use the GitHub no-reply email**, never a personal address. Owner asked; history was rewritten.

## 4. Problems & Solutions
- **bmwusa.com blocks scripted downloads** (curl gets a dropped connection / 000; WebFetch 403).
  The owner's manual is VIN-gated there anyway. Get it via the My BMW app (Profile → Help &
  Contact → Driver's Guide → PDF) or a real browser at bmwusa.com/owners-manuals.html.
  The 2022 warranty booklet was obtained from a **dealer-hosted copy** of BMW NA's PDF instead.
- **NHTSA API model names differ by endpoint.** Recalls: `model=330i` works (`3 SERIES` returns
  nothing). Complaints: `model=3 SERIES` works (`330i` returns 0). Exact commands in
  `.update-the-repo-info/scripts/refresh-nhtsa.sh`.
- **`static.nhtsa.gov` allows scripted downloads** (unlike `nhtsa.gov`). It hosts recall Part 573
  reports (`/odi/rcl/<yr>/RCLRPT-…pdf`) and **BMW's own Service Information Bulletins** as
  manufacturer communications (`/odi/tsbs/<yr>/MC-<id>-0001.pdf`). Best free source of BMW SIBs.
  Community SIB index: itsanalogue.github.io/bmw-tsb.
- **Sites that block AI fetchers** (as of Oct 2026): g20.bimmerpost.com (403), bobistheoilguy (403),
  ECS Tuning (403), Bimmerfest (402), Reddit, zf.com (403), Tire Rack pages, tyrereviews (partly),
  bmwusa.com, nhtsa.gov. FCP Euro works if requests are spaced out (429 otherwise). Search-engine
  summaries of those threads were used instead; mark such claims accordingly.
- **WebSearch has a 200-call per-session budget**, shared across all sub-agents. Three parallel
  research agents exhausted it. Budget searches: primary sources first.
- **NHTSA VIN-specific recall lookup has no public unauthenticated API** (`recallsByVin` →
  "Missing Authentication Token"), and nhtsa.gov pages 403 to scripts. Owners check by hand at
  nhtsa.gov/recalls. The per-model API data in `data/nhtsa/` has the full recall text.
- **mdecoder.com build-sheet decoder** returns "Please Wait… 30 seconds" on first hit. Retry
  after ~35 s with a cookie jar and it returns the full option-code list. bimmer.work 404s for
  this VIN format.
- **Personal email leaked into the first public commits** via global git config. Fixed by setting a
  repo-local no-reply email, `git rebase -r --root --exec 'git commit --amend --no-edit --reset-author'`,
  and `push --force-with-lease`. Orphaned old SHAs stay reachable by direct URL until GitHub purges them
  (support request or delete/recreate repo). **Set the no-reply email before the first commit.**
- **Emissions warranty finding:** for 2022 330i registered in CA, CO, CT, DE, ME, MD, MA, NJ, NY,
  OR, PA, RI, VT, WA, BMW's own booklet lists valve cover gaskets, timing chain, turbo,
  mechatronic, torque converter, injectors, HPFP, PCV valve, heat management module and more at
  **7 yr / 70k**. Easy to miss, high value. Lives in `vehicle/warranty-and-coverage.md`.
