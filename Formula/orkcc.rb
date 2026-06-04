class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.1/orkcc_darwin_arm64.tar.gz"
      sha256 "67c711c5489288c8cb150b12d8df8dab907f57b350686ca84eadfaef5665abea"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.1/orkcc_darwin_amd64.tar.gz"
      sha256 "ce81da72f3f322f30fe30ae62f646de22ea6cb75d14816b234a2e19d813d136f"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.1/orkcc_linux_arm64.tar.gz"
      sha256 "632d75ca1c01211276a00951f5b62fd9de22840fea7d692bdcd9a446d36e0853"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.1/orkcc_linux_amd64.tar.gz"
      sha256 "60c3b0364bd0b8f2000c2b6006c292de3b8c4c5f21acf66a2b98eba8f02396ac"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
