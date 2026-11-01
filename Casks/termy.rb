cask "termy" do
  version "1.4.5,14"
  sha256 "5ed5fc2af3a6a2adb8236287fba2c6980267f1fb8c2fdd52a94932141f6b7e40"

  url "https://www.apptermy.com/downloads/Termy-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Termy"
  desc "Notch terminal for Claude Code and Codex with approvals from the menu bar"
  homepage "https://www.apptermy.com/"

  livecheck do
    url "https://www.apptermy.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Termy.app"

  zap trash: [
    "~/Library/Application Support/Termy",
    "~/Library/Caches/com.bosphorus.termy",
    "~/Library/HTTPStorages/com.bosphorus.termy",
    "~/Library/Preferences/com.bosphorus.termy.plist",
  ]
end
