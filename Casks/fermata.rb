cask "fermata" do
  version "1.0"
  sha256 "7ca5d99001e7047e4dce157d1679950a676392ce5f3d56db7e9ecf32a58723d5"

  url "https://github.com/dylanhu7/fermata/releases/download/v#{version}/Fermata-#{version}.zip"
  name "Fermata"
  desc "Menu bar app that keeps audio on your preferred device"
  homepage "https://github.com/dylanhu7/fermata"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Fermata.app"

  zap trash: "~/Library/Preferences/hu.dylan.fermata.plist"
end
