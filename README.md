# MHusted01 Homebrew tap

Casks for apps by [MHusted01](https://github.com/MHusted01).

## Install

```sh
brew install --cask mhusted01/tap/shortcutlens
```

ShortcutLens is ad-hoc signed and not notarized. After installing and after
each upgrade, remove the quarantine flag and grant the Accessibility
permission again; `brew info --cask shortcutlens` shows the steps. See the
[install guide](https://github.com/MHusted01/shortcutlens/blob/main/docs/install.md).

Upgrade with `brew upgrade --cask shortcutlens`; remove with
`brew uninstall --cask shortcutlens` (add `--zap` to also delete settings and packs).

## Bump a cask for a new release

```sh
brew bump-cask-pr --version X.Y.Z mhusted01/tap/shortcutlens
```

This downloads the release zip, updates `version` and `sha256`, and opens a
pull request in this repository.
