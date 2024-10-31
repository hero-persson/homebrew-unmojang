cask "fjordlauncher" do
  version "9.1.0"

  on_mojave :or_older do
    sha256 "de64536213848a5e6dbf5e044c29ebfff8f2407ce1a0378e60342ddf0c900bb1"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_catalina :or_newer do
    sha256 "82615b3400bd1097b3963d88e02ef7514f8b8b7f2394ed8db02f0f824e75842f"

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
