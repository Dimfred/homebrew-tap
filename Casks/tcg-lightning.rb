cask "tcg-lightning" do
  version "0.1.30"
  sha256 "00cb4d5a8ae46d1c6bae386e073cae5229bcc9ebaa9803f22c7dc82772b8cac5"

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
