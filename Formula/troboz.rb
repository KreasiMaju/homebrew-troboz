class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.8"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.8/troboz-0.1.8-macos-x86_64.tar.gz"
    sha256 "ef26d515daa615e4865d2249a3fdbf5763599e0acd4418c37da1eb6d7090bd6d"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.8/troboz-0.1.8-macos-arm64.tar.gz"
    sha256 "100c1cbb0adc5c310d9f2490cd44f23d681aed6d5a2edea5961e151ca0ffe055"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
