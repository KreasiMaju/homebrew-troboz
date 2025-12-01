class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.45"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.45/troboz-0.1.45-macos-arm64.tar.gz"
    sha256 "865da4ecec3670af08590fb334d0bd1c8a12cda5c87433ecb04da78632be0dd2"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.45/troboz-0.1.45-macos-x86_64.tar.gz"
    sha256 "7255593490f07dfe1d0feb03ae371a54870608fdf94fa4255ac541f81957d73b"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
