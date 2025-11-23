class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.3"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.3/troboz-0.1.3-macos-x86_64.tar.gz"
    sha256 "5666f55c0e204a2a995aea2bc28b8bdef8bfb83376cb798a742486554ce77c6f"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.3/troboz-0.1.3-macos-arm64.tar.gz"
    sha256 "3bf3db78246b14a1cd96902dd7c1b19460a5b3a44fe420ed23ae559048e8e5aa"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
