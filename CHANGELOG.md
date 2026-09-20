# Changelog

## 1.0.0-beta.6

- Detect the active generation from the live game service owner, preventing
  Gold, Silver, and Crystal from remaining on the startup companion screen.

## 1.0.0-beta.5

- Treat a live FireRed field/session as active play instead of waiting for the
  Gen I/II overworld-state stack that FireRed does not use.
- Treat Gold, Silver, and Crystal's live `game.world` with an empty modal stack
  as active free roam.
- Avoid querying Gen I/II modal-state helpers while FireRed owns the session.

## 1.0.0-beta.4

- Enable the host companion-display bridge when Gear first receives it, so
  Android display discovery and AYN Thor `Screen-2` presentation can start.
- Keep bridge activation idempotent across render frames.

## 1.0.0-beta.3

- Add a synchronous canvas-readback fallback for LÖVE 11 mobile builds while
  retaining asynchronous readback on LÖVE 12 hosts.
- Verify real-ROM startup alongside Dramatic Shape on all seven supported
  games.

## 1.0.0-beta.2

- Declare Red, Blue, Yellow, Gold, Silver, Crystal, and FireRed explicitly.
- Add a FireRed SDK compatibility test against the Gen III mod facades.

## 1.0.0-beta.1

First release in the independent Kanto + Johto Gear version series.

- Renamed the public project from Kanto Gear to Kanto + Johto Gear.
- Added a new `kanto_johto_gear` mod identity to avoid being mistaken for or
  downgraded against the previous 1.7.x series.
- Added Pokemon Gold and Silver support across Johto and postgame Kanto.
- Added Generation II maps, landmarks, badges, PC boxes, item aliases,
  time-of-day encounters and field actions.
- Retained compatibility with matching Generation I companion hosts.
- Added the Gen2Recomped companion host APIs and Android dual-display bridge.
- Added cross-generation compatibility, host seam and Android build tests.

This is a beta pending broader physical dual-screen hardware testing.
