<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# Sources registry: where every kind of data comes from

Ranked by trust within each section. **Quirks** are things that cost time on the first build.
Don't rediscover them.

---

## 1. Recalls, complaints, investigations (government, primary)
| Source | Use for | How to query | Quirks |
|---|---|---|---|
| **NHTSA Recalls API** | Recall campaigns by model/year | `https://api.nhtsa.gov/recalls/recallsByVehicle?make=BMW&model=330i&modelYear=YYYY` · single campaign: `…/recalls/campaignNumber?campaignNumber=26V056000` | `model=330i` works; `3 SERIES` returns nothing. Future model years → HTTP 400. Scripted: `scripts/refresh-nhtsa.sh` |
| **NHTSA Complaints API** | Owner-reported failures (spot clusters) | `https://api.nhtsa.gov/complaints/complaintsByVehicle?make=BMW&model=3%20SERIES&modelYear=YYYY` | Opposite of recalls: `3 SERIES` works, `330i` returns 0. Covers all 3 Series variants: filter by text |
| **NHTSA VIN recall lookup** | Is *this* car affected / still open? | https://www.nhtsa.gov/recalls (browser only) | No public unauthenticated VIN API (`recallsByVin` → "Missing Authentication Token"); nhtsa.gov 403s scripts |
| **NHTSA vPIC** | VIN decode + check digit | `https://vpic.nhtsa.gov/api/vehicles/DecodeVinValues/<VIN>?format=json` | Reliable, no key |
| NHTSA recall documents (Part 573 reports, dealer notices) | Defect detail, production-date ranges | `https://static.nhtsa.gov/odi/rcl/<yr>/RCLRPT-<6-char campaign>-<4 digits>.pdf` | `static.nhtsa.gov` allows curl; the 4-digit suffix isn't guessable (find it via the recall page in a browser or news links) |
| **BMW Service Information Bulletins (SIBs) via NHTSA** | Known-issue fixes, extended warranties, procedures | `https://static.nhtsa.gov/odi/tsbs/<yr>/MC-<id>-0001.pdf` · index: https://itsanalogue.github.io/bmw-tsb/index.html | Best free SIB source. Downloads fine with curl |

## 2. BMW official
| Source | Use for | How | Quirks |
|---|---|---|---|
| **Service & Warranty Information booklet** (per model year) | Warranty terms, emissions-parts lists, state lists | bmwusa.com → BMW Value → BMW Ultimate Service → Service and Warranty Books | bmwusa.com blocks curl/WebFetch. **Dealer sites host the same PDFs**: search the exact title + "pdf" (2022 copy came from chapmanbmwoncamelback.com/pdf/…) |
| **Owner's Manual** | Fluid specs, tire pressures, CBS, run-flat rules | bmwusa.com/owners-manuals.html (VIN-gated) or My BMW app → Profile → Help & Contact → Driver's Guide → PDF | Browser/app only. One sedan manual covers 330i/330i xDrive/M340i for 2019–2022 |
| BMW Maintenance Book (Ultimate Care) | What's included, intervals | same BMW page as the warranty booklet | |
| BMW Customer Relations | Recall/VIN/in-service-date questions | 1-800-831-1117 (warranty) · 1-800-525-7417 (recalls) | |
| **RealOEM.com** | Exact OEM part numbers by short VIN (last 7) | realoem.com → enter last 7 | Diagrams + part numbers; no prices |

## 3. Build sheet / option codes
| Source | Use for | Quirks |
|---|---|---|
| **mdecoder.com** | Full factory option list, production date, paint/trim | First load: "Please Wait… 30 seconds". Retry after ~35 s with cookies |
| bimmer.work | Same | 404'd for the 2022 VIN tested |

## 4. Prices: parts (DIY tier)
| Source | Use for | Notes |
|---|---|---|
| **FCP Euro** | OEM/OE parts, lifetime replacement guarantee | Good "kit" pricing (brake kits, oil service kits) |
| **ECS Tuning** | OEM/OE parts + DIY kits | |
| **Pelican Parts** | Parts + DIY articles | |
| RockAuto | Cheapest OE-supplier parts | Check brand (prefer OE suppliers: Mann, Mahle, Bosch, NGK, Textar, Zimmermann, ATE, Pagid) |
| Amazon / Costco | Oil, wipers, filters | Watch for counterfeits on filters/plugs |

## 5. Prices: labor (Independent & Dealer tiers)
| Source | Use for | Notes |
|---|---|---|
| **RepairPal Fair Price Estimator** | Dealer vs. indie ranges by job + ZIP | Use national/representative ZIPs for the public docs |
| Dealer online "service menus" / specials pages | Real dealer menu prices | Many BMW centers post oil-service/brake-fluid prices |
| Forum "what did you pay" threads (last 12 months only) | Real-world quotes | Bimmerpost G20, r/BMW. Note region |
| Book labor times (ALLDATA/Mitchell via shops; BMW ISTA flat-rate) | Time column | Quote shop hours, not wall-clock |

## 6. Tires
| Source | Use for | Notes |
|---|---|---|
| **Tire Rack** | OE fitments by trim, prices, specs, **their instrumented tests + owner survey data** | Gold standard for US. Prices move monthly; rebates seasonal (spring/fall) |
| Car and Driver / Consumer Reports / Tyre Reviews (tyrereviews.com) | Independent test results | Consumer Reports is paywalled |
| Tire maker sites | Treadwear warranty, star (★) BMW-approved fitments, run-flat availability | |
| Costco / Discount Tire / America's Tire / dealer | Installed prices | Costco = install + road-hazard bundle; Discount Tire = price match |

## 7. Opinion & experience (label as opinion in docs)
| Source | Use for |
|---|---|
| **g20.bimmerpost.com** | The main G20 owner forum: issue patterns, DIY threads, interval debates |
| **Reddit**: r/BMW, r/BmwTech, r/bmw3series, r/MechanicAdvice | Upsell sanity checks, "what did you pay", DIY help |
| Bimmerfest | Older but large archive |
| FCP Euro / ECS / Pelican DIY articles & videos | Procedures, tools, times |
| ZF (transmission maker) guidance | 8HP fluid-change recommendations (counterweight to BMW "lifetime fill") |
| Bob Is The Oil Guy (bobistheoilguy.com) | Oil-analysis-backed interval debates |

## 8. Owner-supplied starter links (from `/.links-i-found-for-starting`)
| Link | What it is | Verdict from first build |
|---|---|---|
| https://www.bimmer-service.com/bmw-3-g20/ | G20 workshop-manual hub (320i-focused) + common-fault list | Useful overview; no prices |
| https://europremiumparts.com/blogs/bmw-buying-guides/bmw-3-series-g20-reliability-guide-everything-you-need-to-know-before-buying | Parts-seller reliability guide | Mileage ranges for leaks; seller bias |
| https://www.bimmershops.com/g20-g21-g28-3-series-common-problems | Short common-problems list | Thin (infotainment, exhaust rattle, sunroof) |
| https://g20.bimmerpost.com/forums/attachment.php?attachmentid=2515175&d=1611766755 | Bimmerpost attachment | Blocked to fetchers; open in a browser |
| https://www.fcpeuro.com/BMW-parts/mounts/ · /blog | Parts + DIY blog | Rate-limited (429); space requests |
| bavmods.com | G20 parts/coding | Not yet mined |

## 9. Sites that block automated fetching (Oct 2026)
g20.bimmerpost.com, bobistheoilguy.com, ecstuning.com, zf.com (403) · bimmerfest.com (402) · reddit.com ·
tirerack.com (pages) · bmwusa.com · nhtsa.gov (but **static.nhtsa.gov works**). Work around with
search-engine summaries (label them), a real browser, or the owner pasting content.

## 10. Research method notes
- First build used web search + fetch through AI agents. A session can hit a **web-search budget**
  partway through. Plan the searches: do primary sources first (NHTSA, BMW), then prices, then
  forums.
- For every number written into a doc, keep the URL + check date in that doc's Sources.
