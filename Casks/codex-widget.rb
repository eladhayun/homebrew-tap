cask "codex-widget" do
  version "0.1.0,10"
  sha256 "fd1eec6ee9415a0e661daf5be21c125d8f867d594fef4dcb0f53dee4cf7e7a03"

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
