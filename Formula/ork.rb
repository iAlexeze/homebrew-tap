class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.14"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.14/ork_darwin_arm64.tar.gz"
      sha256 "8d8bb94bb38020162c9b34fdb499994b92de7fd57c0983d16f5ade6292bc30c1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.14/ork_darwin_amd64.tar.gz"
      sha256 "ba4acbd2a7fa340a49bd6758142c00e84eb1ae78c08eb3443f56e62e1bd674cb"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.14/ork_linux_arm64.tar.gz"
      sha256 "9dca6741972870d9e2ab840a942f89beb507769a1a205dc24c9d7aa981d0e3f4"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.14/ork_linux_amd64.tar.gz"
      sha256 "c648f3d01d57e2f5ff0f64c4be62d9a1f7bb292fe2a86afd3883f541fd8c1b7e"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
