class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-12cd82ee"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-12cd82ee/troboz-0.1.0-12cd82ee-macos-x86_64.tar.gz"
    sha256 "605eed28020221f6630f0312d55a0a0ea97d54e736a1746c305f873a709b6aa2"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-12cd82ee/troboz-0.1.0-12cd82ee-macos-arm64.tar.gz"
    sha256 "72937e21503e143273213a601a54c9ccf8a629e065d2e3d08d358b46f7594eed"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
