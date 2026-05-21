class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_darwin_arm64.tar.gz"
      sha256 "816a465e183c0ecace2884d889cbc34e2683a40ed69b07c61a9ad5a4727e7b06"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_darwin_amd64.tar.gz"
      sha256 "b64d8addb57980ec683bce41a98834a89343d8d1872dc561a306774aa2e8bddf"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_linux_arm64.tar.gz"
      sha256 "bbec485113d100a4acff21eba03470146db12d2ba9934a0e82ed990fcb30b8f7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_linux_amd64.tar.gz"
      sha256 "253a2876426560583ef1f0f830425290ae31a54aedd0a6cd0562d8a1282b5a0e"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
