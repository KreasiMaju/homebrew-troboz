class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-9935050e"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-9935050e/troboz-0.1.0-9935050e-macos-x86_64.tar.gz"
    sha256 "b9e4d447a891e110b049fc4fd09a98baa48f36938142d66e7887670ecf25c54f"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-9935050e/troboz-0.1.0-9935050e-macos-arm64.tar.gz"
    sha256 "d0884fa62af8fac6daf6b7a0fde8d577b503312dd085c7b97089ad11c68a5c04"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
