cask "tcg-lightning-dev" do
  version "0.1.28-rc1"
  sha256 "PLACEHOLDER"

  url "https://github.com/Dimfred/tcg-lightning/releases/download/v#{version}/macos-tcg-lightning_#{version}_aarch64.dmg"
  name "TCG Lightning (Dev)"
  desc "AI Powered Deck Building App - Development Release"
  homepage "https://github.com/Dimfred/tcg-lightning"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "tcg-lightning.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/tcg-lightning.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.tcg-lightning-dev.desktop",
    "~/Library/Caches/com.tcg-lightning-dev.desktop",
    "~/Library/Preferences/com.tcg-lightning-dev.desktop.plist",
  ]
end
