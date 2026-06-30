class Fulgur < Formula
  desc "GPU-accelerated, themable text editor with cross-instance file sharing"
  homepage "https://fulgur.app"
  version "0.9.0"
  license "Apache-2.0"

  # Casks handle macOS (see Casks/fulgur.rb). This formula serves Linux only,
  # where Homebrew does not support casks.
  depends_on :linux

  if Hardware::CPU.arm?
    url "https://github.com/fulgur-app/Fulgur/releases/download/v#{version}/Fulgur-v#{version}-linux-aarch64.AppImage"
    sha256 "e89f7e86e0a20e44947b1891ac94cf36a6571eee13336484f3b4584b35faa36b"
  else
    url "https://github.com/fulgur-app/Fulgur/releases/download/v#{version}/Fulgur-v#{version}-linux-x86_64.AppImage"
    sha256 "e81d9f3fcc67fa2ac4016129326fed59dc958334b2cf78e196f27b14c6ff6deb"
  end

  def install
    appimage = Dir["*.AppImage"].first
    chmod 0755, appimage

    # Extract the AppImage instead of running it mounted, so the install does
    # not depend on FUSE being present on the host.
    system "./#{appimage}", "--appimage-extract"

    libexec.install Dir["squashfs-root/*"]

    (bin/"fulgur").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/AppRun" "$@"
    EOS
  end

  test do
    assert_predicate libexec/"AppRun", :executable?
  end
end
