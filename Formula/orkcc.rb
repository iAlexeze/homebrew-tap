class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.4/orkcc_darwin_arm64.tar.gz"
      sha256 "bc23a53034fcb9e377ffdb315954b7d8748cb9c1231324684a6eb5d1ab2a1cf1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.4/orkcc_darwin_amd64.tar.gz"
      sha256 "7912059e42e04d6449ce04b5c5fa4f9da4ba424f65822b1adfe44f468cb9ee78"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.4/orkcc_linux_arm64.tar.gz"
      sha256 "4eff618879f931732373fe6086cfd00533b355c6525e8129a32829f63e4da175"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.4/orkcc_linux_amd64.tar.gz"
      sha256 "85168864a17483aa5c0a0ed30f6cadf3ebbac07acf0010bde12afdabc201f58d"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
