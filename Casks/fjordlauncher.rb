cask "fjordlauncher" do
  version "9.2.4"

  on_mojave :or_older do
    sha256 "a9ad125853b505694d83abebf907075e0515c5d46b14ab31a83c26e8e8672cac"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_catalina :or_newer do
    sha256 "9bbc14ce8d0dcccab7240a78c2018bf5f9fabf5b43f52f9cac3386c1cbb88b19"

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
