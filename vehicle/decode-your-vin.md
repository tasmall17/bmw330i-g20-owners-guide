<p align="right"><i>Last updated on <b>Oct--02--2026</b></i></p>

# Decode your VIN (and why the option codes matter)

**Applies to:** any G20 3 Series (works for most BMWs)

> **TL;DR / ELI5:** Your 17-character VIN is the car's fingerprint. A free government decoder tells
> you the basics (model, engine, AWD or not). A free BMW-specific decoder tells you the **factory
> build sheet**: every option the car left the factory with. That matters because it answers
> questions you'd otherwise guess at: *What size tires? Run-flats? M Sport brakes or standard? What
> battery? Which wheels?* Do this once and save the answers. It's the cheat-sheet for every parts
> order and every quote.

## Step 1: Find it
Windshield base (driver side), driver door jamb sticker, registration/insurance card, My BMW app.
**VINs never contain the letters I, O, or Q**, so a "0" that looks like an "O" is always a zero.

## Step 2: Basic decode (free, official)
**NHTSA vPIC:** https://vpic.nhtsa.gov/decoder/ (or the API:
`https://vpic.nhtsa.gov/api/vehicles/DecodeVinValues/<VIN>?format=json`).
It also verifies the check digit (position 9). "VIN decoded clean" means the VIN is valid.

| Position | Meaning (G20 examples) |
|---|---|
| 1–3 | World manufacturer ID. `3MW` = BMW Mexico (San Luis Potosí) · `WBA` = BMW AG Germany |
| 4–7 | Model/type code. Tells 330i vs 330i xDrive vs M340i |
| 9 | Check digit |
| 10 | Model year: `K`=2019, `L`=2020, `M`=2021, `N`=2022, `P`=2023, `R`=2024, `S`=2025 |
| 11 | Plant |
| 12–17 | Serial. **The last 7 characters are BMW's "short VIN"** that parts sites and BMW decoders use |

## Step 3: Factory build sheet (option codes)
Free BMW decoders (third-party, not BMW-official): **mdecoder.com** (paste the full VIN; first load
says "wait 30 seconds", so refresh after that), bimmer.work, and others. Parts sites
(RealOEM, FCP Euro, ECS Tuning) also take the last 7 to filter parts to your exact car.

### The option codes that actually change maintenance and tire decisions
| Code | Means | Why you care |
|---|---|---|
| `337` | **M Sport package** | Usually bigger wheels (often staggered), sport suspension; M Sport *brakes* are a separate code (`2NH`), with pricier pads/rotors |
| `7AC` (or similar "Sport Line") | Sport Line | Standard brakes/suspension; typically 18" wheels |
| `2NH` | M Sport brakes (blue calipers) | Different, more expensive pads/rotors |
| `258` | **Run-flat tires** | No spare. Decide RFT vs non-RFT at tire time (see `/tires/`) |
| `1T*`, `2T*` etc. (e.g. `1T4` = 18" Style 780) | **Factory wheel style** | Tells you wheel size → tire size, and whether it's **staggered** (different front/rear sizes, can't rotate) |
| `A070` / `A080` etc. | **Battery capacity (Ah)**, AGM | Replacement must match type/capacity *and be registered* |
| `2VB` | TPMS display | Direct TPMS sensors in each wheel (new wheels need sensors) |
| `2TB` | Sport automatic (paddles) | Same ZF 8HP gearbox, different shift logic |
| `842` | Cold-climate version | Often adds a crankcase-vent (blow-by) heater (`4NE`) |
| `8KL` (and similar `8K*`) | Oil-service interval coding | Your CBS oil interval |
| suspension codes (e.g. `2VF` Adaptive M suspension ⚠️ unverified for every MY) | Adaptive/sport suspension | Pricier shocks; affects ride/handling feel |

> The full code list for any car is on its decoder page. If a shop asks "what brakes / wheels /
> battery does it have?", the build sheet answers it.

## Step 4: Save it somewhere you'll find it
Keep the decode with the car's records. In this repo, a personal decode goes in the gitignored
`.memory` file, never in a public doc (see `/.file-structure.md` §2).

## Sources
- NHTSA vPIC decoder: https://vpic.nhtsa.gov/decoder/ (checked Oct--02--2026)
- mdecoder.com BMW VIN decoder: https://www.mdecoder.com (checked Oct--02--2026)
- Model-year letter scheme: 49 CFR Part 565 (federal VIN standard)
