class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.7/ork_darwin_arm64.tar.gz"
      sha256 "33b0894f5fc1911ed1c0e433998fbbd37782a8b0f5818357b03065b34e98ac1e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.7/ork_darwin_amd64.tar.gz"
      sha256 "a0c5ada267fa5090e578bbeeaf546513d4c47a9ea2cff092f2a1f3f17f8403e1"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.7/ork_linux_arm64.tar.gz"
      sha256 "2cc6d2dea4bfefd27c12cfd4c4a80df22c026efcce7fbe0ea22032a44354fab9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.7/ork_linux_amd64.tar.gz"
      sha256 "7de8273b1c898f1eaa20f97b7d50266b5b3e63ff951c0a72cd84e51c6b97ec3a"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
