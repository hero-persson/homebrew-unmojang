cask "fjordlauncher" do
  version "9.2.2"

  on_mojave :or_older do
    sha256 "10914c9d77aaa72ed0cf0faf4ab628b272caee74608a2851c367d9bec99482e1"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_catalina :or_newer do
    sha256 "b30f66ca731d70f23bbab8bd80a6eb3e59668bd4e560c880687a864e7f511ee7"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
  end

  name "Fjord Launcher"
  desc "Prism Launcher fork with support for alternative auth servers"
  homepage "https://github.com/unmojang/FjordLauncher"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fjord Launcher.app"

  zap trash: [
    "~/Library/Application Support/FjordLauncher/FjordLauncher-*.log",
    "~/Library/Application Support/FjordLauncher/fjordlauncher.cfg",
    "~/Library/Application Support/FjordLauncher/metacache",
    "~/Library/Preferences/org.fjordlauncher.FjordLauncher.plist",
    "~/Library/Saved Application State/org.fjordlauncher.FjordLauncher.savedState",
  ]
end
