cask "fjordlauncher" do
  version "9.2.1"

  on_mojave :or_older do
    sha256 "0214745c9d0b29564895fa9f7c01351e963db125466867cbbd5801a28be729d3"

    url "https://github.com/hero-persson/FjordLauncherUnlocked/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_catalina :or_newer do
    sha256 "0732a3304174a96ffbc5fe593942b9b53335ae6630df7f4312dfd48140ec173c"

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
