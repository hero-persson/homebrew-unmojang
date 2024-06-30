cask "fjordlauncher" do
  version "8.4.1"

  on_mojave :or_older do
    sha256 "cd6259c800c909f8977d02704a4816badb07f8ad9c7f829c6b54b23484f2e4c6"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_catalina :or_newer do
    sha256 "61321882e1e7281f4de30672051ab97677b0b408bc2693524bb8fc08b35b894a"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
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
