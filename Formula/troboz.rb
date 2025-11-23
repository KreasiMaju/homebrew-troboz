class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.2"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.2/troboz-0.1.2-macos-x86_64.tar.gz"
    sha256 "1635d7bec1423d4e5eca986939c7a88f13f2871e33ca8cb14fcc1c3ba0ab45d6"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.2/troboz-0.1.2-macos-arm64.tar.gz"
    sha256 "ec4279eeea053d6b142fe45b58fe216aa3523326380a414d14081227e9b138bd"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
