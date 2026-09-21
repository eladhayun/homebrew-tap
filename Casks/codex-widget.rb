cask "codex-widget" do
  version "0.1.0,9"
  sha256 "ee1f2cf801bb737f55fda3ba7d1b331246f8b81b70ba813a1a7f6d8206cfcd2f"

  url "https://github.com/eladhayun/codex-widget/releases/download/v#{version.csv.first}%2Bbuild.#{version.csv.second}/Codex-Widget-#{version.csv.first}-build.#{version.csv.second}-macOS-arm64.dmg"
  name "Codex Widget"
  desc "Menu bar monitor for Codex usage and plan quotas"
  homepage "https://github.com/eladhayun/codex-widget"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Codex Widget.app"

  zap trash: "~/Library/Preferences/com.eladhayun.codex-widget.plist"

  caveats <<~EOS
    Requires an existing signed-in Codex installation.
    This app is ad-hoc signed, not notarized. If macOS blocks it, use
    System Settings > Privacy & Security > Open Anyway if you trust it.
  EOS
end
