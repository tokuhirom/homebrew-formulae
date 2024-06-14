class Capjoy < Formula
  desc "Capjoy is a simple CLI application designed for macOS that allows you to capture images, videos, and audio."
  homepage "https://github.com/tokuhirom/capjoy"
  url "https://github.com/tokuhirom/capjoy/releases/download/0.1.1/capjoy_macos_arm64.tar.gz"
  sha256 "13897dc77979f08d479fb67d02efed38510b222f744a4809d5c8f1c055d50ed4"

  def install
    mv "capjoy_macos_arm64", "capjoy"
    bin.install "capjoy"
  end

  test do
    system "#{bin}/capjoy", "version"
  end
end

