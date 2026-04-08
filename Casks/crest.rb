cask "crest" do
  version "0.0.1"
  sha256 "SHA256_PLACEHOLDER"

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
