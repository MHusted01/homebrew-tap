cask "shortcutlens" do
  version "1.5.1"
  sha256 "7f73378b6521433ca7c2eca2121b3efaaddf692d475aac90853b39df32496e33"

  url "https://github.com/MHusted01/shortcutlens/releases/download/v#{version}/ShortcutLens-#{version}.zip"
  name "ShortcutLens"
  desc "Shows the frontmost app's keyboard shortcuts while Command is held"
  homepage "https://github.com/MHusted01/shortcutlens"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ShortcutLens.app"

  uninstall quit: "io.github.mhusted01.shortcutlens"

  zap trash: [
    "~/Library/Application Support/ShortcutLens",
    "~/Library/Preferences/io.github.mhusted01.shortcutlens.plist",
  ]

  caveats <<~EOS
    ShortcutLens is ad-hoc signed and not notarized, so macOS refuses to open
    it until you remove the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/ShortcutLens.app
    Run this again after every upgrade.

    ShortcutLens needs the Accessibility permission; the app asks for it on
    first launch. After every upgrade macOS treats the new build as a
    different app: remove the old ShortcutLens entry under System Settings >
    Privacy & Security > Accessibility, then add the app again.

    Guide: https://github.com/MHusted01/shortcutlens/blob/main/docs/install.md
  EOS
end
