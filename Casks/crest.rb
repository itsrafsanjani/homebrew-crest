cask "crest" do
  version "0.0.4"
  sha256 "8de6c734a223745712095cbf4fb0caf35f8d10fb6336d5b67d46161220af7285"

  url "https://github.com/itsrafsanjani/crest/releases/download/v#{version}/Crest-#{version}.dmg"
  name "Crest"
  desc "macOS menu bar app for calendar events and prayer times"
  homepage "https://github.com/itsrafsanjani/crest"

  depends_on macos: ">= :sonoma"

  app "Crest.app"

  caveats <<~EOS
    Crest is not notarized. On first launch:
      Right-click Crest.app → Open → Click "Open"
    Or run: xattr -cr /Applications/Crest.app
  EOS
end
