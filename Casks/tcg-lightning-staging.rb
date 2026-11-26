cask "tcg-lightning-staging" do
  version "0.1.38-rc.5"
  sha256 "bd26d06704345280c11ee172e0441823d25f7b5af6f468e5556ea75ec2721dc4"

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
