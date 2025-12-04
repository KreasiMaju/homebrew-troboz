class Troboz < Formula
  desc "Troboz - Secure tunnel client"
  homepage "https://troboz.com"
  version "0.1.51"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.51/troboz-0.1.51-macos-arm64.tar.gz"
    sha256 "b0dd2a810fc9ae7732f47218e4c89edfd79fc8445c530f3a06720322c9610774"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.51/troboz-0.1.51-macos-x86_64.tar.gz"
    sha256 "72457aaa49c9584d80b817bc56524744950988b463895f53460edd062527c9cf"
  end

  def install
    bin.install "troboz"
  end

  test do
    system "#{bin}/troboz", "--version"
  end
end
