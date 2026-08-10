# Publishing Kanto + Johto Gear on GitHub

This guide assumes the GitHub account is `wireproof` and this is the account's
first published project.

## Repository layout

Create two public forks:

1. Fork `AverageConsumer/kanto-gear` and name the fork
   `wireproof/kanto-johto-gear`.
2. Fork `UNDERdecoded/Gen2Recomped` and name the fork
   `wireproof/Gen2Recomped-Kanto-Johto-Gear`.

Using GitHub's **Fork** button preserves the visible relationship and credit to
each upstream project. Choose **For my own purposes**, enter the custom name and
description, and copy the default branch.

## Apply the prepared patches

Clone each fork to a computer with Git installed. Replace the example download
directory with the real location of the patch files.

### Mod repository

```bash
git clone https://github.com/wireproof/kanto-johto-gear.git
cd kanto-johto-gear
git remote add upstream https://github.com/AverageConsumer/kanto-gear.git
git checkout -b kanto-johto-gear-1.0.0-beta.1 9d89117c4b454efbcc8c1a8e66db0f176c426a03
git apply /path/to/Kanto-Johto-Gear-1.0.0-beta.1.patch
git add -A
git commit -m "Release Kanto + Johto Gear 1.0.0 beta 1"
git push -u origin kanto-johto-gear-1.0.0-beta.1
```

### Gen2Recomped host repository

```bash
git clone https://github.com/wireproof/Gen2Recomped-Kanto-Johto-Gear.git
cd Gen2Recomped-Kanto-Johto-Gear
git remote add upstream https://github.com/UNDERdecoded/Gen2Recomped.git
git checkout -b kanto-johto-gear-host-1.0.0-beta.1 c07a88b7d3e811d85f4de79ee8877279f51d8a72
git apply /path/to/Gen2Recomped-Kanto-Johto-Gear-Host-1.0.0-beta.1.patch
git add -A
git commit -m "Add Kanto + Johto Gear companion host support"
git push -u origin kanto-johto-gear-host-1.0.0-beta.1
```

On each GitHub repository page, GitHub will offer to create a pull request.
A pull request is optional for your own fork. The release can target the pushed
branch directly.

## Create the beta releases

### Mod release

- Repository: `wireproof/kanto-johto-gear`
- Tag: `v1.0.0-beta.1`
- Target: `kanto-johto-gear-1.0.0-beta.1`
- Title: `Kanto + Johto Gear 1.0.0 Beta 1`
- Mark it as **Pre-release**.
- Attach `Kanto-Johto-Gear-Mod-1.0.0-beta.1.zip` and the checksum file.

### Host release

- Repository: `wireproof/Gen2Recomped-Kanto-Johto-Gear`
- Tag: `v1.0.0-beta.1`
- Target: `kanto-johto-gear-host-1.0.0-beta.1`
- Title: `Kanto + Johto Gear Gen2 Host 1.0.0 Beta 1`
- Mark it as **Pre-release**.
- Attach the release-signed APK and the checksum file.

Link each release to the other so users know both downloads are required for
Gold and Silver.

## Public-release safety

- Never upload Pokemon ROMs, save files or ROM-extracted generated data.
- Keep every upstream `LICENSE` and copyright notice.
- Do not commit an Android signing keystore or its passwords.
- Use a dedicated release-signing key and keep secure backups. Every future APK
  update must use the same key.
- Treat debug-signed APKs as testing builds, not the permanent public channel.
- Mark the release unofficial, AI-assisted and beta until physical hardware
  testing is complete.
