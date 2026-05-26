class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_arm64.tar.gz"
      sha256 "1fb29102dcb530ddbb1020e04ad10f40e8d7e18154a7de604607f7b178fb123d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_amd64.tar.gz"
      sha256 "9b79b8cdec7d72f47ac500f08a6ed9cd4251b579ec1fcd55df951fcef7c50337"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_arm64.tar.gz"
      sha256 "fef7f292d8eace2955f19be2921c1e75e260fc7226a491aa5aedff756f6ef766"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_amd64.tar.gz"
      sha256 "ecca656688b7d76f3323799898771fe6da044b67be1a4c0b553f62e53818e535"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
