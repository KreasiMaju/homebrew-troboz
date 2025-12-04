class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.50"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.50/troboz-0.1.50-macos-arm64.tar.gz"
    sha256 "750da72a869373eef891f1bcf9c38b9308093c2dee0cf4876200539c1d89e474"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.50/troboz-0.1.50-macos-x86_64.tar.gz"
    sha256 "a347cc3d761ff56444ffe4df1cc58198618382532c0b43517acf736a7270b391"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
