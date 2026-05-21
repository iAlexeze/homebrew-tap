class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_darwin_arm64.tar.gz"
      sha256 "b5849fd01366b3abed50b1690538af275ee1706f30c8ce0d5a85ac91d83afd2b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_darwin_amd64.tar.gz"
      sha256 "b18099886792e9318be172c2a39e1f51475d0562a114325802839686c0c9431d"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_linux_arm64.tar.gz"
      sha256 "5718710ae5a81847746c70b51a64812c2dc87f95cf7d2d958f93666367e362b2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_linux_amd64.tar.gz"
      sha256 "aecf19f086e295619522e0ecb084c04dc8b98fe98d9e95b730274d2e962ed532"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
