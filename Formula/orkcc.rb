class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.8/orkcc_darwin_arm64.tar.gz"
      sha256 "6754f49453c1c77d502e69865c96b00f960c2dee21da092ea96d808830a33c4a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.8/orkcc_darwin_amd64.tar.gz"
      sha256 "36a70a961668f7bbb15bac82d467331c973549a78cfe34e03cd2ee6dd4f81af7"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.8/orkcc_linux_arm64.tar.gz"
      sha256 "f7908ce416ca6a9e4336ccf879ba0dd97e16d7c4a07a174ed6ae46ad9ce6a716"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.8/orkcc_linux_amd64.tar.gz"
      sha256 "be45b5514d9056fe577f4576efb6e1fc27cf0bc14c44420c0adf228d3c3420cb"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
