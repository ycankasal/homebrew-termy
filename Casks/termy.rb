cask "termy" do
  version "1.4.8,17"
  sha256 "2323c90fbbf4f5876733e3558f562519037d26234264a23da59ac7f7598cfabd"

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
