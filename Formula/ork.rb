class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.9/ork_darwin_arm64.tar.gz"
      sha256 "dff8f4e223854bba96f841bf1014f5b7e99954a4e31e2e655d4fe34cfbe271f6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.9/ork_darwin_amd64.tar.gz"
      sha256 "7b74b71f09d591f323fbf0c98ca606c3e33a40c0a4f0e53a86e708993460887b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.9/ork_linux_arm64.tar.gz"
      sha256 "22599d1d482a61349477edb28067c6c0fa1e7a26742d0363c8a5664e14c6183d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.9/ork_linux_amd64.tar.gz"
      sha256 "6f9b271733be74a73bdcd5596548b2624f51cc10306dc148d485ba960898146e"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
