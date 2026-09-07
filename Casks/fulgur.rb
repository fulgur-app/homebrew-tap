cask "fulgur" do
  version "0.12.0"
  sha256 "fe65392382ec743659124ccbc504951e850a950fa6078c29192ebcbac35619e8"
   
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