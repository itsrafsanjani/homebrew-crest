cask "crest" do
  version "0.0.2"
  sha256 "29f35d9c9bbda85a19f477e0405f6f9a7101a3a703970054a2588b7462e571f8"

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
