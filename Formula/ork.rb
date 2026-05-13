class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.4/ork_darwin_arm64.tar.gz"
      sha256 "75821ae69d51b644d6062ca2117b3aa496806be5d64cb5b319f616eaacc4b443"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.4/ork_darwin_amd64.tar.gz"
      sha256 "501e605f3fcab73d94aabdd4aa5ceb68602a3483b1f02a4f528797905e15f18c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.4/ork_linux_arm64.tar.gz"
      sha256 "48eb631edb380a1d4be24df37390b11ec0928e93bf551e2253c3aa02a859ad4a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.4/ork_linux_amd64.tar.gz"
      sha256 "054fe1bd206a5ffa347b35ae1c47a48bc7a9c63a4df7014e8d59d68d7574e6f1"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
