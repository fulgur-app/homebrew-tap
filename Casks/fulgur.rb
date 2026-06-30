cask "fulgur" do
  version "0.9.0"
  sha256 "61ba7eabd2693a726895cfe07f2322b9c17d1381673a46baae13c55987c8d8d4"
   
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