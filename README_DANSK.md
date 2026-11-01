# ORBIT ZERO — Version 1.5 (KONHAGEN GAMES)

Dette er en videreudvikling af Computer Siege-versionen til iPhone, med **40 missioner**, **5 Collections**, **5 bosser** og det eksisterende 360-graders-angrebssystem. Brandet er stadig **KONHAGEN GAMES**. Bundle ID er fortsat `com.konhagengames.orbitzero`, så installation som opdatering kan beholde lokal fremdrift.

## Ny Signature Hangar

På forsiden findes nu en selvstændig **Shop**-knap sammen med kampagnen, missioner, Daily Challenge og Endless Mode. **Hangar** er stadig tilgængelig nederst på forsiden. Begge åbner den samme faste butiksskærm, men direkte på hver sin fane:

- **Shop:** Power-ups for Sparks samt Apple-betalinger for Spark-pakker og taktiske kits.
- **Hangar:** Eksklusive rumskibe og visuelle effekter, der kan købes eller låses op.

Skift mellem fanerne øverst i butikken. Kun varelisten ruller; menu, faner og Tilbage-knap forbliver på plads. Der er ingen ændringer i pris eller købslogik. Her finder man:

- **10 rumskibe:** original, fem Collection Mastery-skibe, eksisterende Nordic Gold og tre nye premium-skibe (Frost Glass, Copenhagen Copper og Void Carbon).
- **5 visuelle effekter:** standard, Zenith Halo som gratis mastery-belønning og tre premium-effekter (Aurora Wave, Prism Burst, Quiet Stardust).
- Hver Collection har et unikt rumskib, der først kan udstyres, når alle otte missioner i den Collection har **3 stjerner** (24/24).
- Zenith Halo-effekten låses ligeledes op ved 24 stjerner i Zenith.
- Spilleren kan kun have ét rumskib og én signatur-animation valgt ad gangen. Valg gemmes lokalt.
- De kosmetiske ændringer påvirker **aldrig** hastighed, hit detection, skade, score, power-ups eller chance for at vinde.

Premium-designs vises som køb, når Apple returnerer deres produkter; indtil da vises de som **Soon**, uden en falsk købsknap. Permanente køb verificeres via StoreKit 2, kan gendannes, og fjernes fra udstyret hvis Apple rapporterer en tilbagekaldelse.

## Nye Apple in-app purchases

Det eksisterende Nordic Gold-produkt er bevaret. Seks nye **non-consumable** produkt-ID'er er tilføjet:

```
com.konhagengames.orbitzero.cosmetic.frostglass
com.konhagengames.orbitzero.cosmetic.copper
com.konhagengames.orbitzero.cosmetic.void
com.konhagengames.orbitzero.cosmetic.aurorawave
com.konhagengames.orbitzero.cosmetic.prismburst
com.konhagengames.orbitzero.cosmetic.stardust
```

I alt findes 12 IAP-produkter i koden, når man medregner tre Sparks-pakker, to taktiske kits og Nordic Gold. Alle IDs og foreslåede priser er samlet i `APP_STORE_CONNECT_PRODUCTS.csv`. **Priserne er vejledende; de faktiske købspriser hentes altid fra App Store.**

## Før App Store-lancering

1. Åbn `OrbitZero.xcodeproj` med Xcode og vælg din Apple Developer-signering.
2. Opret produkt-ID'erne i App Store Connect under den samme app. **Skibe og animationer skal være Non-Consumable**. Sparks og tactical kits er Consumable.
3. Vælg priser, lokaliser produktnavne og beskrivelser, og upload de screenshots Apple kræver til IAP-review.
4. Test køb, afbrudte køb, gendannelse, offlinebrug og tilbagekaldelser i StoreKit Testing/Sandbox.
5. Test alle oplåsninger, skærmstørrelser og performance på en fysisk iPhone før offentliggørelse.
6. Etabler gerne en serverbaseret transaktionslog til de eksisterende consumable-pakker før kommerciel lancering. Denne version benytter et device-lokalt ledger til dem.

Købsfunktionerne kan ikke modtage rigtige penge, før produktopsætning, Apple-aftaler og review er på plads.

## Test og begrænsninger

Swift-filerne er syntakskontrolleret. Produktkataloget valideres separat med en Foundation/Swift-test, og `.pbxproj` er kontrolleret. Der er **ikke** udført en fuld Xcode-/iOS-build, SwiftUI-layouttest eller StoreKit-sandbox-test på en iPhone her.

## Versionsnummer

Denne udgave er **version 1.5** i Xcode (`MARKETING_VERSION = 1.5`) for både Debug og Release, med buildnummer 5. Det vises også på appens menufod og under Settings. Øvrige funktioner er bevaret fra seneste Shop/Hangar-udgave.
