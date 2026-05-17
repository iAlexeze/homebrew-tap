class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_darwin_arm64.tar.gz"
      sha256 "33687351f15b0f0da3178bc6cc26767dd070f8819fb5fbd72af443902576a771"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_darwin_amd64.tar.gz"
      sha256 "451d12d3e00eb1db067c0c0d2ada4293bb6d0234aa01aeb75b04637deae6b38c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_linux_arm64.tar.gz"
      sha256 "de61100edc6d337a2e86d593dc9d5baa2b9b58cb426227bf006d9ef932333dc2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_linux_amd64.tar.gz"
      sha256 "45b2e2667a1cbdbcb8df6279819c3c576f5b8e4814911e8c730e4fbd441be1af"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
