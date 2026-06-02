class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_darwin_arm64.tar.gz"
      sha256 "24db53c591e8a9468af9f58ab80be1c4e3777c1b60d2727f73d8de359562b4ff"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_darwin_amd64.tar.gz"
      sha256 "9222568711a158125f00be2396f8a96965cc61bf8f5011441670726839cbff45"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_linux_arm64.tar.gz"
      sha256 "c73549ccd1773b8e1acfbb81582c37c4d1590a72ff355eb22211776acde1e62c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_linux_amd64.tar.gz"
      sha256 "1e53e0fee915f4d536529d93a8c3b183e8d2fa4b139d42ebc5d3e0f59c9729d3"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
