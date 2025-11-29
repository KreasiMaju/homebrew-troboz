class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.41"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.41/troboz-0.1.41-macos-arm64.tar.gz"
    sha256 "12c5f4a04ca0845fb82fa592a715a0ef044b8dc705dfbc004c3aec40d21d932d"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.41/troboz-0.1.41-macos-x86_64.tar.gz"
    sha256 "f520eb511ba02eb44c66cff9e74e6939d640358c237e99da7dae9cb74cb3dfe8"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
