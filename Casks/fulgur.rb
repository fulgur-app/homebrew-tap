cask "fulgur" do
  version "0.13.0"
  sha256 "526751ee44cb3b108944ff72544db9070668aa06ef1e6559c4650a986d74da4a"
   
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