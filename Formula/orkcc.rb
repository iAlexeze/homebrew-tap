class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.3/orkcc_darwin_arm64.tar.gz"
      sha256 "050c93047e596065a86b93b54957904df10e0c4f847fbb0c581c33ede4babe22"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.3/orkcc_darwin_amd64.tar.gz"
      sha256 "73fad5788b401a22dc6392f42242ee8ffb2e3a7a5de5e59e2f73f60e4b8c43aa"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.3/orkcc_linux_arm64.tar.gz"
      sha256 "d21f88a7ee43a191c73316d9bc639be760f6f4d5fda78df9f8fd2f76749adc86"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.3/orkcc_linux_amd64.tar.gz"
      sha256 "3b3f1f35935afef5d64e9d0f0d2314629f261ab3e63280a96e7a470467f6336d"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
