class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-e6dcbc88"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-e6dcbc88/troboz-0.1.0-e6dcbc88-macos-x86_64.tar.gz"
    sha256 "045648d54556982b217ad3de1bc7af9dfed6ced6f3d580a9bc8e3f1a01582af7"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-e6dcbc88/troboz-0.1.0-e6dcbc88-macos-arm64.tar.gz"
    sha256 "76c714451a977979e5bd74e2d872c3f606f2d9f653f3e067d5f7053145a1b268"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
