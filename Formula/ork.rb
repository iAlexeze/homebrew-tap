class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.4/ork_darwin_arm64.tar.gz"
      sha256 "cec816239f00086d472aa1d86f237044dd6f89249222601bbd3b3ec7df9a3c91"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.4/ork_darwin_amd64.tar.gz"
      sha256 "52f2c2af2cf6637ac0125374d86156e09b6fdfba6a209d8be4497f6802e4f877"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.4/ork_linux_arm64.tar.gz"
      sha256 "cbd3ad0393ab16f5a9f2588f95ff791e29ad4f0515c6a2df00cbb721cc8f66dc"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.4/ork_linux_amd64.tar.gz"
      sha256 "e6b2a0654f8f63d4f8c9cccd0bf9d452b9eee10ea426cede5bc0697177ebea01"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
