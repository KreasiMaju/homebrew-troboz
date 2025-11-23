class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.11"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.11/troboz-0.1.11-macos-x86_64.tar.gz"
    sha256 "225a862d45d3a50781699246436e5876ae3ec39333fffed7c302602f62f52bed"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.11/troboz-0.1.11-macos-arm64.tar.gz"
    sha256 "cb32debee8ea6a32a7ddafeb5354ee8928c608c4cf5105521f023e1ff97f539f"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
