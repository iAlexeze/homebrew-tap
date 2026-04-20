class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.1"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_darwin_arm64.tar.gz"
      sha256 "2f3a7adbf9970c6288ef1a043914ba85fdaa81511538126131d3be9924504b5a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_darwin_amd64.tar.gz"
      sha256 "5267891fc6e2887825c529cd03cd33221eff5d569d7ebd333cc0a93878c24298"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_linux_arm64.tar.gz"
      sha256 "3396245d571e0bb24bf443b74a07260b2a6c9270ca85ceddb393e71e67bf4848"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_linux_amd64.tar.gz"
      sha256 "4cf9587dcbe35009bfa6d4c1ed5eceec766eba2e9cb387fc688c6aa11688d5fd"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
