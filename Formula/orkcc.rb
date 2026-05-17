class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_darwin_arm64.tar.gz"
      sha256 "ddf291f9a9e16c214b20b76d49a6f56eabe9fdee359ca0331616ae4b7741c14f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_darwin_amd64.tar.gz"
      sha256 "1db3dc56c2bd4585eb439c6807b53a48cc32aeba23e84ed43e91e0ae48cc22ca"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_linux_arm64.tar.gz"
      sha256 "5a0b2023fd7c183306a98a9ddd53e7a002b42a825976cdf55ec23d1d817e6ccd"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_linux_amd64.tar.gz"
      sha256 "2ac06c21280059f686b3adcf5b14d98e01abb75ec3cec69bc7a691e9fe0dc259"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
