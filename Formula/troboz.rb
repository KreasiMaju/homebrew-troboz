class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.49"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.49/troboz-0.1.49-macos-arm64.tar.gz"
    sha256 "20d93bae51e5b2d023d63e32ab8f5339706491bd376a0046b3ed6f8150fcdcd3"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.49/troboz-0.1.49-macos-x86_64.tar.gz"
    sha256 "6abeeaa3faa003848aaa95ed9bb816d63998dd3b425a797d9e97d7d8e6b58e4c"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
