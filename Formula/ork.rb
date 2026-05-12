class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.3/ork_darwin_arm64.tar.gz"
      sha256 "b3508da713d72fcaed47d6a470e71de7bab24f3cc73f3a8a6556c9908b295314"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.3/ork_darwin_amd64.tar.gz"
      sha256 "6c094930e2825ef13d6744db80a28df70fc5fa68c1dba77357253a70f9cd426f"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.3/ork_linux_arm64.tar.gz"
      sha256 "4793636e62a9cd6e18108a27ba24f1f3c44e35ef301830ff5fafcb87d11d8242"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.3/ork_linux_amd64.tar.gz"
      sha256 "b7f04f6256bd7ab78d2d61c301d1335fead7fcceaf8f5cf96b2481471d1a8bdc"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
