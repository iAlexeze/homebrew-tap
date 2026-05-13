class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.4/orkcc_darwin_arm64.tar.gz"
      sha256 "5964f6c27551083615c0f425b18521d995cb25b95cb38941d2a386be2217e337"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.4/orkcc_darwin_amd64.tar.gz"
      sha256 "190b6ae4d0681340f173234e5e04c15f8b917e240c9d6c9ed832a21ca19d9cf6"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.4/orkcc_linux_arm64.tar.gz"
      sha256 "0149ef43971ef1c8bd1275d0de5e2d2d250176e03fa95299f1455d7b0ccb712d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.4/orkcc_linux_amd64.tar.gz"
      sha256 "2abfff240502179f7fa93ad386558c589baf4166a5b114f865ea332cfef5039f"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
