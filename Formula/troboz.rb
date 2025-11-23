class Troboz < Formula
  desc "Expose your local services to the world"
  homepage "https://github.com/KreasiMaju/troboz"
  version "0.1.0-ec09960d"
  
  if Hardware::CPU.intel?
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-ec09960d/troboz-0.1.0-ec09960d-macos-x86_64.tar.gz"
    sha256 "bb75f07b11857688cfc9f024c7d255074f1ebc95db1535f33e04443d4f69772e"
  else
    url "https://github.com/KreasiMaju/troboz-release/releases/download/v0.1.0-ec09960d/troboz-0.1.0-ec09960d-macos-arm64.tar.gz"
    sha256 "f4e659a29d1007c8eb706683cee30509c7f16774481e076471089d79feaaddd8"
  end
  
  def install
    bin.install "troboz"
  end
  
  test do
    system "#{bin}/troboz", "--version"
  end
end
