cask "termy" do
  version "1.4.7,16"
  sha256 "3bc16655ddff6d9f7f8c6cf1b58e4965a554317aebe051eee9cb350ed18d29f4"

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
