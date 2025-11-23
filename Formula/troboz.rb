class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.14"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.14/troboz-0.1.14-macos-x86_64.tar.gz"
    sha256 "f8eb45709872847ab4eb4fe84cdd8bd3bbe8c0151dc65f19af4c156f1cb98a22"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.14/troboz-0.1.14-macos-arm64.tar.gz"
    sha256 "02515ceea4483992d41327fe70b4969df44dee3caed3039f74baf00a3fea499a"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
