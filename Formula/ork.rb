class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_arm64.tar.gz"
      sha256 "146df5c9a8e0dd9d0e7b120d2aecf37c37901c5d375df665a897848505e97972"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_amd64.tar.gz"
      sha256 "5fbb2a6e7a621feb555dc6b8106935532505fe9b1eff8e21ef02ba894fd6c490"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_arm64.tar.gz"
      sha256 "d57ebbd1becad3364de1ccaa31f11a3b181e2c950ce9881728a839ad83fb358e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_amd64.tar.gz"
      sha256 "8f843ba899fc260c17aca27eb7d036ceb063a3c0afe67a5c560789544d6ebb47"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
