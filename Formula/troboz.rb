class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.10"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.10/troboz-0.1.10-macos-x86_64.tar.gz"
    sha256 "b1531c71bda49a8cc8bee6af3cb7f90ee47fdcd1e0c822545abc1b52f375cede"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.10/troboz-0.1.10-macos-arm64.tar.gz"
    sha256 "1cd96c4cdf615555baccee5ce5799925aecc274757b979a88e7be2c1201c10b5"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
