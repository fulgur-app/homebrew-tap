# Homebrew-tap
The homebrew tap repository for Fulgur.

## macOS

Get Fulgur via Homebrew using `brew install --cask fulgur-app/tap/fulgur`.

### Already have Fulgur installed?

If you previously installed Fulgur manually (for example by dragging it from the `.dmg` into `/Applications`), Homebrew will refuse to overwrite it:

```
Error: It seems there is already an App at '/Applications/Fulgur.app'.
```

Let Homebrew take ownership of the existing app with `--adopt`:

```
brew install --cask --adopt fulgur-app/tap/fulgur
```

After this, `brew upgrade` manages Fulgur normally.

## Linux

Homebrew does not support casks on Linux, so Linux uses a formula instead (no `--cask` flag):

```
brew install fulgur-app/tap/fulgur
```

This installs the official Linux AppImage (x86_64 or aarch64) and exposes a `fulgur` command.
