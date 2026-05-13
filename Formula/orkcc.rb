class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.5"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.5/orkcc_darwin_arm64.tar.gz"
      sha256 "3f813b9c3b00673faed340849e6654c42a58df5937ddcba39474d99aba28f7ab"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.5/orkcc_darwin_amd64.tar.gz"
      sha256 "6ee9bd27f0684ea427635ff01d80ec7ce4f253251c9be014a543dcb9760e9555"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.5/orkcc_linux_arm64.tar.gz"
      sha256 "24c225c2857266492b0d2198a66022ad33c23425132ec03dad19c39cfe8ff1a7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.5/orkcc_linux_amd64.tar.gz"
      sha256 "79ecdd6d163f88b5c481860afb107b17dae992bc5f6d2c78218210e5e97b7421"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
