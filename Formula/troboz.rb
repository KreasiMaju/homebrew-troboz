class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.13"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.13/troboz-0.1.13-macos-x86_64.tar.gz"
    sha256 "230ae32ab411a7aeaaea9ae13b3a76ddd50663f08a14d4e57a072cff6c786400"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.13/troboz-0.1.13-macos-arm64.tar.gz"
    sha256 "2270a38affa467bfe338bf37f897590056524d02d4bef770d0880af904e3e66c"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
