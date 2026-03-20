cask "fit-sync" do
  version "0.1.0"
  sha256 "28de42fbd1880c165de1b3c5b14b88e98f1b3067e134b1513bdaf56322defe81"

  url "https://github.com/Dimfred/fit-sync/releases/download/v#{version}/macos-fit-sync_#{version}_aarch64.dmg"
  name "FIT Sync"
  desc "Sync .fit files to Garmin and other targets"
  homepage "https://github.com/Dimfred/fit-sync"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "fit-sync.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/fit-sync.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.fitsync.desktop",
    "~/Library/Caches/com.fitsync.desktop",
    "~/Library/Preferences/com.fitsync.desktop.plist",
  ]
end
