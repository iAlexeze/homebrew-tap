class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.2/ork_darwin_arm64.tar.gz"
      sha256 "fc17bd2b05e7f714497338d64e9a76d9cd03e76828bb53903cc16b916506e31a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.2/ork_darwin_amd64.tar.gz"
      sha256 "a7b179d1e421240874017368ea065c730277edbea5fae2035f4bd1b959efd44c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.2/ork_linux_arm64.tar.gz"
      sha256 "290fa025d370a1793c6f6ef689bb0e0491d7f109b0fb10a4d317b0eaa0bdcf7f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.2/ork_linux_amd64.tar.gz"
      sha256 "79c6abaf2366a640079e6ec03a627e14e56e7d44d7389ac922470e8eae581b8f"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
