class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.47"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.47/troboz-0.1.47-macos-arm64.tar.gz"
    sha256 "75d64a753a86b27ec2d50395c1b408bf1af12557ab215eedcf671d8eaf9efecf"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.47/troboz-0.1.47-macos-x86_64.tar.gz"
    sha256 "6820f5aa5201a8791474c92c199ae42a9b8a02033024bd959fceb30c56b2563a"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
