cask "tcg-lightning" do
  version "0.1.28"
  sha256 "58307cec0504613affcbb727e2a55dd9abed533125a0170634d6a5f108f01496"

  url "https://github.com/Dimfred/tcg-lightning/releases/download/v#{version}/macos-tcg-lightning_#{version}_aarch64.dmg"
  name "TCG Lightning"
  desc "AI Powered Deck Building App"
  homepage "https://github.com/Dimfred/tcg-lightning"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "tcg-lightning.app"

  zap trash: [
    "~/Library/Application Support/com.tcglightning.desktop",
    "~/Library/Caches/com.tcglightning.desktop",
    "~/Library/Preferences/com.tcglightning.desktop.plist",
  ]
end
