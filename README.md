# Elad's Homebrew tap

Install Codex Widget, a native macOS menu bar monitor for Codex usage:

```sh
brew install --cask eladhayun/tap/codex-widget
```

Requires Apple Silicon, macOS 14 or later, and an existing signed-in Codex installation. Open **Codex Widget** from Applications after installing.

```sh
brew update
brew upgrade --cask codex-widget
```

Quit the widget before upgrading, then reopen it from Applications.

The app is ad-hoc signed and not notarized. If macOS blocks the first launch, use **System Settings → Privacy & Security → Open Anyway** if you trust the app. The cask preserves Gatekeeper protections.

Uninstall with `brew uninstall --cask codex-widget`. Add `--zap` to also remove widget preferences; Codex credentials and session history are never removed.

The [Codex Widget release workflow](https://github.com/eladhayun/codex-widget/actions/workflows/release.yml) updates the cask after successful releases, verifying the DMG's published SHA-256. The cask's `0.1.0,7` version format represents app version `0.1.0` and build `7`; the app displays the corresponding release tag `v0.1.0+build.7`.
