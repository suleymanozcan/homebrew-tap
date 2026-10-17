cask "devtidy" do
  version "0.1.2"
  sha256 "29ef449303f54fa105d114544a70577946e75272efef8a07f0ba5f140f6b4233"

  url "https://github.com/suleymanozcan/devtidy/releases/download/v#{version}/DevTidy-#{version}.dmg"
  name "DevTidy"
  desc "Menu bar app to stop forgotten dev servers, Docker containers and build caches"
  homepage "https://github.com/suleymanozcan/devtidy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DevTidy.app"

  uninstall quit: "dev.minata.DevTidy"

  zap trash: [
    "~/Library/Caches/dev.minata.DevTidy",
    "~/Library/Logs/DevTidy",
    "~/Library/Preferences/dev.minata.DevTidy.plist",
  ]
end
