cask "tcg-lightning-staging" do
  version "0.1.38-rc.6"
  sha256 "fb1f0b643bea62ef56df7279f9bc5e2ffa3c7dce272cdac5abb12375f46f221e"

  url "https://github.com/Dimfred/tcg-lightning/releases/download/v#{version}/macos-tcg-lightning-staging_#{version}_aarch64.dmg"
  name "TCG Lightning (Staging)"
  desc "AI Powered Deck Building App - Staging Release"
  homepage "https://github.com/Dimfred/tcg-lightning"

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "tcg-lightning-staging.app"

  zap trash: [
    "~/Library/Application Support/com.tcglightning-staging.desktop",
    "~/Library/Caches/com.tcglightning-staging.desktop",
    "~/Library/Preferences/com.tcglightning-staging.desktop.plist",
  ]
end
