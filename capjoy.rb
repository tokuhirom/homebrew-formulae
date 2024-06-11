class Capjoy < Formula
  desc "Capjoy is a simple CLI application designed for macOS that allows you to capture images, videos, and audio."
  homepage "https://github.com/tokuhirom/capjoy"
  url "https://github.com/tokuhirom/capjoy/releases/download/0.0.19/capjoy_macos_arm64.tar.gz"
  # curl -L -o capjoy_macos_arm64.tar.gz https://github.com/tokuhirom/capjoy/releases/download/0.0.19/capjoy_macos_arm64.tar.gz
  # shasum -a 256 capjoy_macos_arm64.tar.gz
  sha256 "7c945bb66624db3f8d3020b236406ec2c1ab70cd63b08d8b9f1b23cb7a95ca71"

  def install
    mv "capjoy_macos_arm64", "capjoy"
    bin.install "capjoy"
  end

  test do
    system "#{bin}/capjoy", "version"
  end
end

