cask "shortcutlens" do
  version "1.3.0"
  sha256 "31c19616ced02cc55a8fa8e794899c41aa9f4ec6f06139787b0e1670acbb35a6"

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
