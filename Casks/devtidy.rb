cask "devtidy" do
  version "0.1.0"
  sha256 "45f26f7bd9e3ccaab8d0a6e35440e8cf72f2c43acc02088a76abd9407ead8014"

  url "https://github.com/suleymanozcan/devtidy/releases/download/v#{version}/DevTidy-#{version}.dmg"
  name "DevTidy"
  desc "Menu bar app to stop forgotten dev servers, Docker containers and build caches"
  homepage "https://github.com/suleymanozcan/devtidy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "DevTidy.app"

  uninstall quit: "dev.minata.DevTidy"

  zap trash: [
    "~/Library/Logs/DevTidy",
    "~/Library/Preferences/dev.minata.DevTidy.plist",
  ]
end
