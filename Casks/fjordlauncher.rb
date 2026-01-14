cask "fjordlauncher" do
  on_catalina :or_older do
    version "9.4.1"
    sha256 "21cebabaf127f022f793d04c0ed4d10f1e7acfa661e669cbbbe9af81d648e310"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_big_sur do
    version "9.4.1"
    sha256 "56e2b0efeaf97c34f2f61281483b88e3323757a2ea3ef7a9f51be0a1de8d30eb"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
  end
  on_monterey :or_newer do
    version "10.0.2.0"
    sha256 "56e2b0efeaf97c34f2f61281483b88e3323757a2ea3ef7a9f51be0a1de8d30eb"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
  end

  name "Fjord Launcher"
  desc "Prism Launcher fork with support for alternative auth servers"
  homepage "https://github.com/unmojang/FjordLauncher"

  auto_updates false

  app "Fjord Launcher.app"
  binary "#{appdir}/Fjord Launcher.app/Contents/MacOS/fjordlauncher"

  zap trash: [
    "~/Library/Application Support/FjordLauncher/FjordLauncher-*.log",
    "~/Library/Application Support/FjordLauncher/fjordlauncher.cfg",
    "~/Library/Application Support/FjordLauncher/metacache",
    "~/Library/Preferences/org.fjordlauncher.FjordLauncher.plist",
    "~/Library/Saved Application State/org.fjordlauncher.FjordLauncher.savedState",
  ]
end
