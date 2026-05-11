class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.2/orkcc_darwin_arm64.tar.gz"
      sha256 "2a286044da7bed4a2faa1a0b53013f5aea057c911d555671b272d7d9b98fb61f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.2/orkcc_darwin_amd64.tar.gz"
      sha256 "052e386f40948b6358f7b9a9d21264a11dd99b14b3a782f91d0fd8f3698425a1"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.2/orkcc_linux_arm64.tar.gz"
      sha256 "f94fa2c52c4ce0c739166533dabdfd0b4d8f965fc9609c57bdbcb4cd084b1432"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.2/orkcc_linux_amd64.tar.gz"
      sha256 "01a31dbfc861a9a2fda6ecf68c7d3ac1d5e0fea32a641bf4da9370552082adf1"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
