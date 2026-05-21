class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_darwin_arm64.tar.gz"
      sha256 "d68a32d01a0bb7a8380d9ababc71ccc721e12d8f67a0c5baf306fc6934c29ce6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_darwin_amd64.tar.gz"
      sha256 "f3f5441ba2f29d3b34a3b7146a67c5fb6ae40aa80f52a1294c0bce39378153aa"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_linux_arm64.tar.gz"
      sha256 "f6ecb4fb18b42d048e5811df918bf93e7ab78d62371f4624d27a96c58f638559"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_linux_amd64.tar.gz"
      sha256 "1c9816b1c153868e6464e9ecf2bf01a20b44916e5f33cb60d7170ffad0fe606d"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
