class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.6/ork_darwin_arm64.tar.gz"
      sha256 "4cc0610470003c8fcb232cac5221123d0ebfcb5983444861557d38dfc23f48f5"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.6/ork_darwin_amd64.tar.gz"
      sha256 "7ad24bab6893a8efae900b8681c02ffb583f809a6bbfcf547f4c21ab207ca330"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.6/ork_linux_arm64.tar.gz"
      sha256 "3509ca6ff369de504503f4fda678aacd32f216ae65bab2805bb0d2203d9939d2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.6/ork_linux_amd64.tar.gz"
      sha256 "1ed05e26e59f98e2a07983a4d621feb9982ea55de76ebf5f37111a9476af8832"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
