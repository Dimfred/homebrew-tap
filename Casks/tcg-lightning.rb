cask "tcg-lightning" do
  version "0.1.28"
  sha256 "b286a902f6c373a11397b77eecb11d933a44f55c14e485f4b80a74b47f7cb396"

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
