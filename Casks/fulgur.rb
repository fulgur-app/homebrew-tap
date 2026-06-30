cask "fulgur" do
  version "0.8.0"
  sha256 "859b9d7fe8e51aba6221d76dda328373609025ecd9b2fd3c8b264f5b48b8535a"
   
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