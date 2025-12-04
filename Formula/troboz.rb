class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.48"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.48/troboz-0.1.48-macos-arm64.tar.gz"
    sha256 "3398253bdbbe1d94e69ba125d2d069dcea11e9643a90bdbf3acae38b7169f0f3"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.48/troboz-0.1.48-macos-x86_64.tar.gz"
    sha256 "cc147444876d8bc9a979af0b05975d9734ec4069661da7f237853c47f34191fd"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
