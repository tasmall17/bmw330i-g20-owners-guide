<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# Specs, fluids, capacities & part numbers

**Applies to:** G20 330i / 330i xDrive (B46D engine, US), 2019–2024. Verify part numbers for your car
by short VIN on RealOEM/ETK. Options change parts.

> **TL;DR / ELI5:** This is the "what goes in it" cheat-sheet. The two things people get wrong:
> (1) **there's no dipstick**: you check oil on the screen (iDrive), and you only top up to what it
> says; (2) BMW calls the transmission, transfer case, diff, and coolant fluids **"lifetime,"** but
> the people who build the transmission (ZF) and most specialists disagree. See
> [`/maintenance/`](../maintenance/README.md).

## Drivetrain
| Item | Spec |
|---|---|
| Engine | **B46D**: 2.0 L turbo inline-4, US-emissions version of the B48 family. 255 hp (US rating) |
| Transmission | **ZF 8HP** (8HP51 family) 8-speed automatic |
| AWD (xDrive) | **ATX13-X** transfer case (electronically controlled clutch) + front and rear differentials |
| Brakes, standard | Front 330×24 mm, rear 330×20 mm, single-piston sliding calipers |
| Brakes, M Sport (`2NH`) | Front 348×36 mm 4-piston fixed, rear 345×24 mm. Caliper color doesn't tell you; measure (center cap to rotor edge > 7" ≈ M Sport) |
| Wheels | 5×112, 66.6 mm bore; lug bolts **140 Nm** |

## Fluids & capacities
| Fluid | Spec / part no. | Capacity | BMW interval | Confidence |
|---|---|---|---|---|
| **Engine oil** | **BMW Longlife-17 FE+**, **SAE 0W-20** preferred. Manual also allows LL-01 FE / LL-14 FE+ (0W-20, 0W-30). Approved examples: BMW TwinPower 0W-20, Castrol EDGE 0W-20 LL-17FE+, Liqui Moly Top Tec 6600, Motul 8100 Eco-Clean 0W-20, Ravenol EHS/EFS, Fuchs Titan GT1 Flex 5 0W-20 | **~5.25 L (≈5.5 qt) w/ filter** (sources range 5.25 L–5.75 L). **Fill ~5.0 L, then top up per iDrive** | CBS, ~10k mi / 1 yr | Spec High; capacity Med |
| Oil filter | **11 42 8 575 211** kit (element, cap O-ring, drain washer). Mahle OEM ~$18. ⚠️ 11 42 8 583 898 is the **B58 (6-cyl)** filter, not this one | — | Each oil service | High |
| Drain plug / filter cap torque | 25 Nm (~18 ft-lb) each, new washer | — | — | Med |
| **Brake fluid** | **DOT 4 LV** (low viscosity), BMW 81 22 0 142 156 | ~1–1.5 L for a flush | Time-based: reported **first at 3 yrs, then every 2 yrs** | Med |
| **Coolant** | **BMW HT-12** (green), 83 19 2 468 442 (1 gal concentrate), 50/50 with distilled water. Don't mix with old blue without a full flush | — | "Long-term" (lifetime) | High |
| **ATF** (ZF 8HP) | ZF LifeguardFluid 8 / BMW ATF 3+ (83 22 2 289 720) | ~8.5–8.8 L total; ~7 L on a pan service | BMW: lifetime. **ZF: ~93k mi (150,000 km), sooner if hard use; a ZF service doc says 50–75k mi or 8 yrs** | High |
| **Transfer case** | **BMW DTF-1** (formerly TF 0870), 83 22 2 409 710 | **~0.7–0.8 L** | Lifetime (non-M). BMW's shudder fix = change it | High (SIB 27 02 20) |
| Front & rear differentials | Hypoid axle oil: **get the exact spec by VIN** (sources conflict on grade) | — | Not scheduled (non-M) | ⚠️ Low |
| Refrigerant | R-1234yf (option `8R9`) | per underhood label | Not scheduled | High |

## Filters, plugs & consumables
| Part | Part number | Interval (BMW) | Notes |
|---|---|---|---|
| **Cabin microfilter** (×1, activated charcoal) | **64 11 9 382 886** | Every 2nd oil service (~20k) | Passenger footwell, behind the under-glovebox cover. Genuine ~$77–84; Mann/Valeo ~$27–56 |
| **Engine air filter** | **13 71 8 580 428** (also 13 71 5 A78 8D9) | Every 4th oil service (~40k) | Hengst OEM ~$27, genuine ~$42 |
| **Spark plugs** (×4) | **12 12 2 455 258** (NGK, ~$24 ea). NGK retail cross-ref ⚠️ 96206 (some say 95248) | Every 6th oil service (~60k) | **23 Nm**, pre-gapped, **no anti-seize**, 14 mm thin-wall 12-point socket |
| 12V battery | **AGM**, in trunk (right side). 70 Ah: 61 21 6 805 461 · 80 Ah: 61 21 7 555 719. **Read your label** | Condition-based | Must be **registered** to the car; coding only if Ah/type changes |
| Wiper blades | 24" driver / 19" passenger | Wear | Use wiper service position |
| Key fob battery | Coin cell (⚠️ usually CR2032) | Every 2nd oil service | |
| Oil filter housing reseal (if leaking) | Gasket set **11 42 9 886 567** + redesigned bush **11 42 8 490 951** | On failure | Per BMW SIB 11 10 25 |

## Electronics you'll hear about
- **CBS** (Condition Based Service): the car tracks each service item by time and/or mileage and
  shows it in iDrive. Resetting after DIY needs a scan tool/app (BimmerLink, Carly, ISTA, Foxwell).
- **ISTA**: BMW's dealer diagnostic software. Many independent BMW shops have it too.
- **Battery registration**: tells the charging system a new battery is installed. Skip it and the
  new battery gets charged like an old one, which shortens its life.

## Sources (checked Oct--02--2026)
- BMW 2021 Maintenance booklet (intervals): [`/official-docs/bmw/2021-bmw-maintenance-program-booklet.pdf`](../official-docs/bmw/2021-bmw-maintenance-program-booklet.pdf)
- BMW SIB 27 02 20 (DTF-1, ~0.7 L): [`/official-docs/nhtsa/`](../official-docs/nhtsa/)
- BMW SIB 11 10 25 (oil filter housing parts): [`/official-docs/nhtsa/`](../official-docs/nhtsa/)
- ZF LifeguardFluid 8 data sheet: https://aftermarket.zf.com/lubricants-datasheets/lifeguardfluid-8/pds_zf_lifeguardfluid_8_en_20170920.pdf
- BimmerWorld oil/filter/plug/filter/brake data: https://www.bimmerworld.com/BMW-Engine-Oil/ · https://www.bimmerworld.com/Engine/Engine-Maintenance/Oil-Filter-Kit-Mahle-11428575211.html · https://www.bimmerworld.com/Engine/Ignition/BMW-Spark-Plug-12122455258.html · https://www.bimmerworld.com/Intake-Fuel/Replacement-Filters/OEM-Air-Filter-Element-G20-330i-G29-Z4-30i-13718580428.html · https://www.bimmerworld.com/BMW-Interior/BMW-Cabin-Air-Microfilters/Cabin-Air-Filter-G20-3-Series-G01-X3-G02-X4-G29-Z4.html · https://www.bimmerworld.com/About-Us/M-Sport-Brakes-G20-G22/ · https://www.bimmerworld.com/About-Us/BMW-Transmission-Differential-Oil/
- LL-17 FE+ approved oils: https://g05.bimmerpost.com/forums/attachment.php?attachmentid=3020023&d=1667091284 · https://g20.bimmerpost.com/forums/showthread/2217845/0w-20-oil
- Batteries: https://www.bmwpartsdeal.com/oem-2022-bmw-330i-batteries.html
- DTF-1: https://www.fcpeuro.com/products/bmw-transfer-case-fluid-1-liter-shell-83222409710 · HT-12: https://www.turnermotorsport.com/p-600648-genuine-bmw-bmw-coolant-antifreeze-1-gallon/
