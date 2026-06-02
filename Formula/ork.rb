class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_darwin_arm64.tar.gz"
      sha256 "0aceb2c61ee8bbfc2502ec80a0a9b1aadc55e45445bfac6f43629f2d4ade82b1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_darwin_amd64.tar.gz"
      sha256 "c97fab5a63ffe2d7fe7e10fed976ed09842dba44d95a3285ed1b7455e0aabfb3"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_linux_arm64.tar.gz"
      sha256 "4ad8214d7ba196f3fda61da5f7a8fd84df77be26fc2b2fcca2a6d1f3d80d2f5a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_linux_amd64.tar.gz"
      sha256 "0e6b9a27ec6d14ce5769ec611ba33b09c7fe91d12b0db396b6d45683edb92234"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
