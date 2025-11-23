class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-bd31a582"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-bd31a582/troboz-0.1.0-bd31a582-macos-x86_64.tar.gz"
    sha256 "db26eaa1349709a7e7fbc2c155fae15851a7a656c6174cc1af04ae9c6a913e58"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-bd31a582/troboz-0.1.0-bd31a582-macos-arm64.tar.gz"
    sha256 "898e970697d119b3a5b6b00d88998df636850e29983507f5acb0718fa6c47c0a"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
