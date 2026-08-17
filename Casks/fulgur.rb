cask "fulgur" do
  version "0.11.0"
  sha256 "98e0dfdf42ab93148d42addab2fc96c9170ea41c1a63af5f63d744cf481a1f42"
   
  url "https://github.com/fulgur-app/Fulgur/releases/download/v#{version}/Fulgur-v#{version}-macos-aarch64.dmg"
  name "Fulgur"
  desc "GPU-accelerated, fully themable, multiplatform text editor with file sharing between instances."
  homepage "https://fulgur.app"

  depends_on arch: :arm64

  app "Fulgur.app"

  zap trash: [
    "~/.fulgur",
    "~/Library/Application Support/app.fulgur.fulgur",
    "~/Library/Preferences/app.fulgur.fulgur.plist",
    "~/Library/Saved Application State/app.fulgur.fulgur.savedState",
  ]
end