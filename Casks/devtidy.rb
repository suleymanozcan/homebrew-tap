cask "devtidy" do
  version "0.1.1"
  sha256 "55e86998c297b761568d459d1da1260d138529e5b439361fa8c7633511b1cf21"

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
