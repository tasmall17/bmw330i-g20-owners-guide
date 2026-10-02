<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# How to read (and audit) a dealer inspection or quote

**Applies to:** any BMW dealer multi-point inspection (MPI) / estimate, written for the G20 330i

> **TL;DR / ELI5:** A dealer quote is usually a **video + checklist** (green/yellow/red) texted to you,
> with priced recommendations. You don't have to approve anything on the spot. For each red/yellow
> line, ask four questions: **Is it real** (measurement or photo)? **Is it due** (CBS or BMW
> schedule)? **Is it covered** (recall/warranty/emissions/CPO)? **Is the price fair** (vs the
> red-flag table)? Then decide: **do it here / do it elsewhere / DIY / wait.**

## Step 1: Separate the three kinds of lines
| Kind | Looks like | What to do |
|---|---|---|
| **Free work** | "Factory campaign / recall / service action", "Covered by warranty" | Let them do it. Ask about reimbursement if you already paid for the same repair |
| **Your request** | "Perform oil service", "Value Service", prepaid plans | Check you're getting Value Service pricing; do the plan math ([`upsells.md`](upsells.md)) |
| **Recommendations** | "Caution"/"Fail" items with prices | Audit each with Step 2 |

## Step 2: Audit each recommendation
| Question | How to check |
|---|---|
| **Real?** | Ask for the number: brake pad **mm**, tire tread **32nds**, battery **test printout**, photo/video of the leak or crack |
| **Due?** | CBS items show in iDrive (Vehicle status → Service requirements). Compare to [`/maintenance/`](../maintenance/README.md). **⚠️ CBS is only a counter:** if a shop replaced a part earlier but **didn't reset that CBS item**, the car (and the next MPI) will say it's due again. A "due" line with no notes, photos or measurements is usually CBS-only. **Check it against your own invoices** before approving |
| **Covered?** | Is the part on the **emissions warranty list** (7 yr/70k in 14 states; 8 yr/80k federal)? Under CPO? A known issue with a BMW bulletin (goodwill)? → [`/vehicle/warranty-and-coverage.md`](../vehicle/warranty-and-coverage.md) |
| **Fair price?** | Divide labor $ by hours to get their rate; compare parts to retail (FCP Euro/ECS); compare totals to [red-flag prices](README.md#red-flag-prices-question-anything-above-these-standard-brakes-2026) |
| **Urgent?** | Safety (brakes, tires below 3/32", leaks onto exhaust, cracked mounts) vs. "soon" vs. "monitor" |

## Step 3: Decide per line
| Decision | When |
|---|---|
| **Approve here** | Free; or priced within ~15% of indie; or needs dealer tools; or you value one-stop convenience |
| **Do elsewhere** | Big labor jobs (mounts, leaks, brakes, fluids): get an indie BMW specialist quote with the same part numbers |
| **DIY** | Cabin/engine air filter, wipers, fob battery (and oil/plugs/brakes if you're set up) |
| **Wait / monitor** | Tires at 4–5/32", seeps (not drips), "recommended soon" items. Write down the measurement and recheck |

## Step 4: Questions that save money
1. "Itemize parts with **part numbers** and labor **hours**."
2. "Is this priced under **BMW Value Service**?"
3. "Any **open campaigns** or **extended-warranty notes (WVI Vehicle Comments)** on this VIN?"
4. "What's the **in-service date**?" (warranty clocks)
5. For any leak: "Can you **confirm the source** (photo/dye)? Is that part on the **California
   emissions warranty list**?"
6. For tires: "Which **brand/model** and is it **run-flat**? What's the **DOT date**?"
7. "If I decline today, how long is safe?"

## Worked example (anonymized: a real Oct 2026 quote from a US BMW dealer, ~60k-mile 330i xDrive)
| Line | Quoted (pre-tax) | Audit |
|---|---|---|
| Starter recall | $0 | Free recall, approve |
| Oil service (Value Service) + 3-yr prepaid oil plan | plan $249 | Break-even = 3 dealer oil services in 3 yrs; worth it at ~12k+ mi/yr if you'll stay with that dealer |
| Brake fluid | $248 (1.0 h @ $215 + $33) | Due (time-based). Dealer price within range; indie ~$100–180 |
| Cabin filter | $245 (0.6 h + $116 part) | Due. **DIY for ~$30–85 in 15 min** |
| Spark plugs | $302 (0.8 h + 4 × $32.50) | **Flagged by CBS only, but the owner's plugs had already been replaced ~17k miles earlier** (at the same dealer); the CBS counter was never reset. Decline, and ask for a CBS reset. (Had they been due: fair-ish for a dealer; indie $195–325; DIY ~$100) |
| 4 tires + mount | $1,286 ($256/tire + $260 install) | Tread 4–5/32" = plan soon, not today. Install fee is ~2× typical; compare against [`/tires/`](../tires/README.md) |
| Alignment | $210 | Reasonable with new tires; indie $120–250 |
| Both engine mounts | ~$2,000 (6.72 h + 2 × $230) | Real if cracked/leaking. **Confirm it's mount fluid, not engine oil from above** (that would point to valve cover/oil filter housing, possibly under emissions warranty). Get an indie quote → [`/known-issues/engine-mounts.md`](../known-issues/engine-mounts.md) |
