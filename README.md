# ORBIT ZERO · iOS

**Version 1.5 · KONHAGEN GAMES**

Et minimalistisk iPhone-arkadespil i nordisk stil, udviklet med **SwiftUI**, **SpriteKit** og **StoreKit 2**. Spillet handler om at time præcise spring, stoppe computerens angreb og mestre en længere kampagne.

## Funktioner

- **40 missioner i fem Collections:** Aurora, Monolith, Equinox, Obsidian og Zenith.
- **Fem bosskampe** med forskellige angreb og faser.
- **Computer Siege:** To nye farepunkter kan opstå for hver fulde 360°-omgang. Fjern dem, før computerens trusselsmåler bliver fuld.
- **Missionsprogression** med stjerner, udfordringer og Collection Mastery.
- **Daily Challenge** og **Endless Mode**.
- **Shop** på forsiden med virtuelle Sparks, bomber, Freeze og skjolde.
- **Signature Hangar** med kosmetiske rumskibe og sejrseffekter.
- **StoreKit 2** til køb inde i appen (kræver opsætning i App Store Connect).
- Kompakt iPhone-menu og et minimalistisk, skandinavisk visuelt udtryk.

## Krav

- Mac med Xcode, som understøtter iOS 17 SDK eller nyere.
- iPhone med **iOS 17+** eller en tilsvarende iPhone-simulator.
- Apple Developer-konto og korrekte signeringsindstillinger ved installation på en fysisk enhed.

## Kom i gang

1. Åbn `OrbitZero.xcodeproj` i Xcode.
2. Vælg `OrbitZero`-target og konfigurer **Signing & Capabilities** med dit team.
3. Vælg iPhone-simulator eller din iPhone.
4. Vælg **Product → Clean Build Folder** (om nødvendigt), og kør med **⌘R**.

Det er et **native Xcode-projekt**, ikke en browser-demo eller en færdig `.ipa`.

## Version og identitet

| Felt | Værdi |
|---|---|
| App | ORBIT ZERO |
| Udgiver | KONHAGEN GAMES |
| Version | **1.5** |
| Build | **5** |
| Bundle ID | `com.konhagengames.orbitzero` |
| Platform | iPhone / iOS 17+ |

Bundle ID er videreført for at kunne bevare eksisterende lokal brugerdata ved opdatering under samme app-identitet og signering. Slet ikke appen, hvis du vil bevare lokal fremdrift.

## Køb og monetisering

Produkt-ID'er er dokumenteret i [`APP_STORE_CONNECT_PRODUCTS.csv`](APP_STORE_CONNECT_PRODUCTS.csv) og kildekoden `OrbitZero/SparkStore.swift`. Fysiske eller rigtige Apple-betalinger fungerer **ikke** uden registrering af produkter, aftaler og test/godkendelse i App Store Connect. Prices styres af Apple og må ikke hardcodes i butikken.

Kosmetiske køb skal oprettes som **Non-Consumable**; Sparks og taktiske pakker er **Consumable**. Se [`docs/APP_STORE_SETUP.md`](docs/APP_STORE_SETUP.md).

## Projektstruktur

```text
OrbitZero.xcodeproj/          Xcode-projekt
OrbitZero/                    SwiftUI, SpriteKit og spilmekanik
OrbitZero/Assets.xcassets/    App-ikon og billeder
OrbitZero/Audio/              Lydeffekter
APP_STORE_CONNECT_PRODUCTS.csv
README_DANSK.md              Detaljer om funktioner og shop
CHANGELOG.md                 Versionshistorik
.github/workflows/           Manuel kildekodekontrol
```

## GitHub

Se [`docs/PUBLISH_TO_GITHUB.md`](docs/PUBLISH_TO_GITHUB.md) for udgivelse som **privat repository** og brug af GitHub CLI. Der er ingen Apple-certifikater, adgangskoder eller API-nøgler i projektet.

## Status

Swift-koden kan syntaksparses, men denne pakke er **ikke fuldt bygget, simulator-testet eller StoreKit-sandbox-testet**. Før udgivelse i App Store skal funktionalitet, betalinger, købsgendannelse, tilgængelighed og ydeevne testes i Xcode på relevante iPhone-modeller.

Copyright © 2026 KONHAGEN GAMES. Alle rettigheder forbeholdes. Ingen open-source-licens er tildelt.
