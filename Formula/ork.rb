class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.16"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.16/ork_darwin_arm64.tar.gz"
      sha256 "93d1f7e03d859d1a1810b57f63fac1f73b905bcae38f37c030fd9ebd26cbd80e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.16/ork_darwin_amd64.tar.gz"
      sha256 "5d1281f3a0f72e3ab28c0a77ecd11fea18d796fc0c47a689fa2f14faa4aba92b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.16/ork_linux_arm64.tar.gz"
      sha256 "2be770d705fc8c38b57c2d5f2e1e6af860723a4733e7bbc3c9cf58d857519a6c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.16/ork_linux_amd64.tar.gz"
      sha256 "4219c773421b76d94da4492f3ddb1f919abde6adf413814b2c7a6971247d0565"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
