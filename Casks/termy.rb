cask "termy" do
  version "1.4.9,18"
  sha256 "1b58c2f227e1f65d785c043961b41cca4acd1906065fbcf641029d591dde577c"

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
