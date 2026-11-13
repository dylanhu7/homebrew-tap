cask "tandem" do
  version "1.0"
  sha256 "4b6d90fa34056f3dd44320a5fe7b487dc5173400204a21a7afe7214eeec3d3c7"

  url "https://github.com/dylanhu7/tandem/releases/download/v#{version}/Tandem-#{version}.zip"
  name "Tandem"
  desc "Record several windows at once, each to its own movie file"
  homepage "https://github.com/dylanhu7/tandem"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Tandem.app"

  zap trash: "~/Library/Preferences/hu.dylan.Tandem.plist"
end
