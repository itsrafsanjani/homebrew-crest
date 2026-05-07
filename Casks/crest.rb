cask "crest" do
  version "0.0.5"
  sha256 "272b3ea59e299d12ce85b8b6efbebf4f3306848a64abecaa0ce73b013c2c25f3"

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
