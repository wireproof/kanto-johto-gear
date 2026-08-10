# Kanto + Johto Gear

Kanto + Johto Gear is an unofficial dual-screen companion mod for supported
Gen1Recomp and Gen2Recomped Android hosts. It keeps the game on one display
while maps, party information, battles, PC menus and contextual touch controls
use the second display.

> [!IMPORTANT]
> This is an independent, AI-assisted compatibility fork maintained by
> [wireproof](https://github.com/wireproof). It is not an official
> Gen1Recomp, Gen2Recomped, Pokemon or Nintendo release. No ROM, save file or
> ROM-extracted game data is included.

The public project uses one combined name. In-game, the compact companion
header changes to **KANTO GEAR** for Generation I and **JOHTO GEAR** for
Generation II.

## Current release

**1.0.0-beta.1** is the first release in this fork's independent version
series. It is a beta because the Android bridge and mod pass automated tests
but still need broader testing on physical dual-screen devices.

| Game | Region support | Status |
| --- | --- | --- |
| Pokemon Red, Blue and Yellow | Kanto | Supported with a matching Gen1 Kanto Gear host |
| Pokemon Gold and Silver | Johto and postgame Kanto | Supported with the matching custom Gen2Recomped host |
| Pokemon Crystal | Johto and Kanto | Not currently claimed by the Gen2Recomped base |

![The Pokemon Lab rendered on the main display](kanto-gear-lab-2026.png)

<p align="center">
  <img src="kanto-gear-map-2026.png" width="48%" alt="Region map on the companion display">
  <img src="kanto-gear-party-2026.png" width="48%" alt="Party summary on the companion display">
</p>

## What it does

- Shows a touchable regional map, local map, party, Trainer Card, field tools,
  area encounters and optional guide on the companion display.
- Supports Johto/Kanto landmarks, all 16 Gold/Silver badges, 14 Gen2 PC boxes,
  and morning/day/night encounters.
- Exposes contextual Gen2 actions including Headbutt, Rock Smash, Sweet Scent,
  Whirlpool and Waterfall when the live game state permits them.
- Moves battle choices, move learning, dialogue choices and PC lists to the
  companion display when configured.
- Supports live display targeting and screen swapping on compatible Android
  hardware.
- Retains Generation I behavior on a matching Gen1 host.

## Required components

Kanto + Johto Gear uses two coordinated repositories:

1. [`wireproof/kanto-johto-gear`](https://github.com/wireproof/kanto-johto-gear)
   contains this mod.
2. [`wireproof/Gen2Recomped-Kanto-Johto-Gear`](https://github.com/wireproof/Gen2Recomped-Kanto-Johto-Gear)
   is the Gen2Recomped fork containing the Android and companion APIs required
   for Gold and Silver.

Use matched releases. A stock Gen2Recomped APK does not currently contain all
of the required companion interfaces.

## Install the beta

1. Export or back up any existing saves.
2. Install the matching Kanto + Johto Gear host APK.
3. Import your own supported Pokemon Gold or Silver ROM into that app.
4. Open **Mods**, choose **Import mod .zip**, and select
   `Kanto-Johto-Gear-Mod-1.0.0-beta.1.zip`.
5. Enable **Kanto + Johto Gear** and start the game.

The forked Android host uses its own application ID,
`com.wireproof.kantojohtogear`, so it installs separately from upstream
Gen2Recomped. Its saves and imported ROM cache are also separate.

## Controls

- Swipe left or right on the companion display to change pages.
- Tap page controls, party members, moves, field tools and battle choices.
- Press **Y** to swap the game and companion between displays when supported.
- Optional L2/R2 page navigation is disabled by default so the mod does not
  unexpectedly claim controller inputs.

## Verification

The beta was checked against Gen1, Gen2 and Johto-shaped fixtures. The targeted
suites cover mod loading, rendering, pointer ownership, battle actions, maps,
field tools, PC views and the Android dual-display bridge. Android native code
was compiled for arm64-v8a, armeabi-v7a and x86_64.

Physical AYN Thor testing was not available during development. Please include
the device, Android version, game version, display order and reproduction steps
in hardware bug reports.

## Versioning

This fork starts fresh at `1.0.0-beta.1` and follows semantic versioning:

- `1.0.0-beta.2` — another beta fix release.
- `1.0.0` — first stable release.
- `1.1.0` — backward-compatible feature release.
- `2.0.0` — release containing breaking changes.

The underlying Gen2Recomped engine retains its own version independently.

## Development and publishing

See [GITHUB-PUBLISHING.md](GITHUB-PUBLISHING.md) for the beginner-friendly
fork, patch, push and release process. See [CHANGELOG.md](CHANGELOG.md) for the
project history.

## Credits and license

This fork is based on:

- [Kanto Gear](https://github.com/AverageConsumer/kanto-gear) by
  AverageConsumer.
- [Gen2Recomped](https://github.com/UNDERdecoded/Gen2Recomped) by UNDERdecoded.
- Gen1Recomp and the LÖVE Android runtime used by those projects.

The project retains the original copyright and MIT license notices. See
[LICENSE](LICENSE). Pokemon and related names are trademarks of their
respective owners; they do not sponsor or endorse this project.
