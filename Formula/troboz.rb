class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.49"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.49/troboz-0.1.49-macos-arm64.tar.gz"
    sha256 ""
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.49/troboz-0.1.49-macos-x86_64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
