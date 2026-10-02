<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# official-docs/: primary source documents

Unedited documents from the people who actually set the rules (BMW of North America, NHTSA).
Every other doc in this repo that quotes a warranty term, interval, or recall should be traceable
to something here or to a linked official URL.

## Index
| File | Publisher | What it is | Applies to | Source | Retrieved | SHA-256 |
|---|---|---|---|---|---|---|
| [`bmw/2022-bmw-3-and-5-series-service-and-warranty-information.pdf`](bmw/2022-bmw-3-and-5-series-service-and-warranty-information.pdf) | BMW of North America | 2022 Service & Warranty Information booklet (28 pp): new-vehicle 4yr/50k, Ultimate Care 3yr/36k, federal emissions (2yr/24k; 8yr/80k cat + DME), **California emissions warranty (7yr/70k) parts list and the 14 states it applies in**, rust 12yr, 12V battery care | MY2022 330i, 330i xDrive, M340i, 5 Series | BMW NA PDF, as hosted by an authorized BMW center: `chapmanbmwoncamelback.com/pdf/BMW_2022_3-5_Series_Warranty_ADA.pdf` (BMW's own index: bmwusa.com → Service and Warranty Books) | Oct--02--2026 | `0eb175c94fd51628472b58f2b995333822d0d8f998dcf12f2c30fb50cec3775d` |
| [`bmw/2021-bmw-maintenance-program-booklet.pdf`](bmw/2021-bmw-maintenance-program-booklet.pdf) | BMW of North America | 2021 BMW Maintenance (Ultimate Care) booklet (25 pp): what CBS schedules and when (cabin filter every 2nd oil service, air filter every 4th, plugs every 6th), what Ultimate Care includes/excludes, "long-life" fluids. **Closest available proxy for MY2022** (2022 edition not found) | MY2021 BMWs incl. G20 | Dealer-hosted copy: `di-uploads-pod15.s3.us-east-1.amazonaws.com/bmwofescondido/uploads/2021/05/5A1BC92_21MY_BMW_Maintenance_FINAL_Print_withCover_111220.pdf` | Oct--02--2026 | `9a7758e72d3054aa98f6419ccbda2f0f22fc41eff6cd767c7ec05769736f9ac3` |
| [`nhtsa/recall-26v056-part573-report.pdf`](nhtsa/recall-26v056-part573-report.pdf) | BMW NA → NHTSA | Part 573 defect report, starter recall 26V056000: every affected model with **production-date ranges** (3 Series 330i/330i xDrive: Nov 26 2020 – May 7 2024, ~46,384) | 2021–2024 3 Series + many others | https://static.nhtsa.gov/odi/rcl/2026/RCLRPT-26V056-6534.pdf | Oct--02--2026 | `e3140f83d1b74037e37ddf4294a4e51a644460d91434486fec812253ea59adb7` |
| [`nhtsa/bmw-sib-11-10-25-oil-filter-housing-coolant-leak.pdf`](nhtsa/bmw-sib-11-10-25-oil-filter-housing-coolant-leak.pdf) | BMW NA (filed with NHTSA) | SIB 11 10 25 (Dec 2025): **coolant leaking from oil filter housing** on B46D/B48 four-cylinders (G20 incl.). Fix: gasket set 11 42 9 886 567 + redesigned bush 11 42 8 490 951. Covered only under new-car warranty or CPO | G20 330i (B46D) and others | https://static.nhtsa.gov/odi/tsbs/2026/MC-11026946-0001.pdf | Oct--02--2026 | `0d28f9dc609dc9a8dbd4a501f48a8064fb12ba362905d82917932acb39e7152b` |
| [`nhtsa/bmw-sib-27-02-20-r5-xdrive-transfer-case-shudder.pdf`](nhtsa/bmw-sib-27-02-20-r5-xdrive-transfer-case-shudder.pdf) | BMW NA (filed with NHTSA) | SIB 27 02 20 rev. 5 (Jun 2025): **xDrive driveline jerk/shudder**. Causes: uneven/incorrect tires or out-of-spec transfer-case oil. Fluid DTF-1 83 22 2 409 710, ~0.7 L | G20 xDrive and most xDrive BMWs | https://static.nhtsa.gov/odi/tsbs/2025/MC-11019579-0001.pdf | Oct--02--2026 | `93bc4e09bf216ad630a4fe56b763ad865687fa6ada06d8a91f989f68aa033b2e` |
| [`nhtsa/bmw-sib-01-03-24-evap-purge-valve-extended-warranty.pdf`](nhtsa/bmw-sib-01-03-24-evap-purge-valve-extended-warranty.pdf) | BMW NA (filed with NHTSA) | SIB 01 03 24 rev. 1 (Sep 2024): **EVAP purge valve extended warranty 15 yr / 150k**. This revision lists G20 MY2019; eligibility is per-VIN in BMW's WVI "Vehicle Comments" | 2019 G20 330i (this rev.) ⚠️ later revision reportedly broader | https://static.nhtsa.gov/odi/tsbs/2024/MC-11008101-0001.pdf | Oct--02--2026 | `d0385bc282647910b9f8a97a55f513fd32c32c018146e170414e150cdeed130a` |
| [`nhtsa/bmw-sib-32-01-23-steering-creak-tie-rods.pdf`](nhtsa/bmw-sib-32-01-23-steering-creak-tie-rods.pdf) | BMW NA (filed with NHTSA) | SIB 32 01 23: creaking/knocking when turning the wheel at standstill or on rough roads (tie-rod thrust bearing friction, electric steering rack) | G20 and others | https://static.nhtsa.gov/odi/tsbs/2023/MC-10235180-9999.pdf | Oct--02--2026 | `0d1a49654440e71f3b0410f7c509e8b3eb1fba65b999095e1233e6984bc92d25` |

> **Tip for future updates:** NHTSA hosts BMW's own Service Information Bulletins (SIBs) as
> "Manufacturer Communications" at `static.nhtsa.gov/odi/tsbs/<year>/MC-<id>.pdf`, and
> `static.nhtsa.gov` **does** allow scripted downloads (unlike `nhtsa.gov`). A community index of
> BMW SIBs: https://itsanalogue.github.io/bmw-tsb/index.html

## Wanted (not yet collected): how to add them
| Document | Why it matters | How to get it |
|---|---|---|
| **Owner's Manual, 2022 3 Series Sedan (US)** | Fluid specs, tire pressures, CBS, run-flat rules, jump-start points | bmwusa.com/owners-manuals.html (enter VIN) **or** My BMW app → Profile → Help & Contact → Driver's Guide → PDF → Owner's Manual. Save as `bmw/2022-bmw-3-series-sedan-owners-manual.pdf`, add a row above with SHA-256 (`shasum -a 256 <file>`). bmwusa.com blocks scripted downloads, so do it in a browser. |
| BMW Maintenance booklet **for MY2022** (we have 2021 as a proxy) | BMW's own list of what's included and when | bmwusa.com → BMW Value → BMW Ultimate Service → Service and Warranty Books, or dealer-hosted copies |
| Warranty booklets for other G20 model years (2019–2021, 2023+) | Emissions-parts lists and state lists change by year | Same BMW page, or dealer-hosted copies (search the exact title + `pdf`) |
| Other recall reports (25V636000, 26V438000, 25V202000) | Defect explanation + production ranges | `static.nhtsa.gov/odi/rcl/<year>/RCLRPT-<campaign-6-chars>-<4 digits>.pdf`. The 4-digit suffix isn't guessable; get it from the recall page in a browser, or from news coverage that links it |

## Copyright note
BMW documents are © BMW of North America. They're freely distributed by BMW and its dealers and
kept here unmodified for reference, with the source cited. If a rights-holder objects, remove the
file and keep the index row + link. A ready-made `.gitignore` line (`official-docs/bmw/*.pdf`)
is commented out at the root for that case. NHTSA documents are U.S. government works.
