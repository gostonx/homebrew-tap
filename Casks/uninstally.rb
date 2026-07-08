cask "uninstally" do
  version "1.3.0"
  sha256 "390363266f5e0aec3d62f6fb7281ddf7cc97c95cba73df46cc0d425c192ee214"

  url "https://github.com/gostonx/uninstally/releases/download/v#{version}/Uninstally.dmg",
      verified: "github.com/gostonx/uninstally/"
  name "Uninstally"
  desc "Completely uninstall macOS apps and their leftover files"
  homepage "https://codenta.us/"

  app "Uninstally.app"

  caveats <<~EOS
    Uninstally is currently distributed ad-hoc signed (not notarized). If macOS
    blocks it on first launch, install without quarantine:

      brew install --cask --no-quarantine gostonx/tap/uninstally

    To enable the Finder right-click "Uninstall with Uninstally", turn it on in:
      System Settings > General > Login Items & Extensions > Finder Extensions
  EOS

  zap trash: [
    "~/Library/Caches/com.codenta.uninstally",
    "~/Library/HTTPStorages/com.codenta.uninstally",
    "~/Library/Preferences/com.codenta.uninstally.plist",
    "~/Library/Saved Application State/com.codenta.uninstally.savedState",
  ]
end
