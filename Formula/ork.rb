class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.3/ork_darwin_arm64.tar.gz"
      sha256 "19adf4c42ce7853e4dea97a0ccdce1a86f7ba13aba2c148b07c6fe00a9e12ab0"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.3/ork_darwin_amd64.tar.gz"
      sha256 "39cb3f5688e55e1021f2e07b3c9ec3c7f2fe3539df7a40880d7efecc56418e93"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.3/ork_linux_arm64.tar.gz"
      sha256 "17e7988038f841208c3ae75af87a5ea12cbcbee2e0e2458f76ec5b7458d8b079"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.3/ork_linux_amd64.tar.gz"
      sha256 "c5d7f8d2d20715a18dd4b7bed3d55ecc1fdb5d7243bf1df774a0141c9c8e0efe"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
