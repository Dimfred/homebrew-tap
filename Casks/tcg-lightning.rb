cask "tcg-lightning" do
  version "0.1.36"
  sha256 "371ebc48d877f22692cd11a4bf8f000da57406562262516015e62ba975687f36"

  url "https://github.com/Dimfred/tcg-lightning/releases/download/v#{version}/macos-tcg-lightning_#{version}_aarch64.dmg"
  name "TCG Lightning"
  desc "AI Powered Deck Building App"
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
    "~/Library/Application Support/com.tcglightning.desktop",
    "~/Library/Caches/com.tcglightning.desktop",
    "~/Library/Preferences/com.tcglightning.desktop.plist",
  ]
end
