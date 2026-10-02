# BMW G20 330i / 330i xDrive: Owner's Knowledge Base

**AIs: read these before doing anything, in this order:**

1. **`.file-structure.md`**: where things go and the doc conventions (date stamp, sections,
   price tiers, public vs private). Non-negotiable.
2. **`memory.md`**: running project notes: settled decisions and problems already solved.
3. **`.memory`** *(only in the owner's personal clone; gitignored)*: the owner's own car (VIN
   decode, build options, mileage, location, open questions). If present, you're in the **personal
   clone**: personalize, and never push (push is disabled). If absent, you're in the **public
   working copy**: stay general. See `.file-structure.md` §2a.
4. **`.update-the-repo-info/README.md`**: if the task is "bring this repo up to date."

## Hard rules
- **This repo is public.** Personal data (full VINs, names, locations, dealers/shops used,
  quotes, invoices, mileage) goes **only** in `.memory`, `private/`, or `service-records/`. Check `git status`
  before any commit: none of them may appear.
- Every doc starts with the top-right date stamp `Last updated on <b>Mmm--DD--YYYY</b>`. Bump it
  when you change facts in that doc.
- New explainer docs copy `templates/item-doc.md`. Keep its section order.
- Prices: national ranges, three tiers (DIY → Independent → Dealer), with time, labeled with the
  year checked.
- Cite sources. Primary (BMW, NHTSA, ZF) beats forum. Mark anything unverified `⚠️ unverified`.
- Solved a non-obvious problem? Append it to `memory.md` → "Problems & Solutions".
  Owner settled a question? Append to `memory.md` → "Decisions".
