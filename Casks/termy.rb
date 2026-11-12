cask "termy" do
  version "1.4.10,19"
  sha256 "6799d6f77ad741bb34dfc5d213c8a8d99c96f499429ea2833c6128a2acabf5de"

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
