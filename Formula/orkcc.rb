class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_darwin_arm64.tar.gz"
      sha256 "c6d8c54425329ce30a4cad8b98f4c174ed32401cb0e46a536145409021e2e058"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_darwin_amd64.tar.gz"
      sha256 "e3c8e708856c15fa4d6342f390bdd96d6f970ab21141ac1b3224ecb92ef64e13"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_linux_arm64.tar.gz"
      sha256 "c6bd90215def0b9f03cd9deeec6343b68cb94841653c22dd5a4de16c2ea71d4b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_linux_amd64.tar.gz"
      sha256 "9e0cad4a05b50091dd6bd4e12b118b867db75b363b508e7fb8031025c5630bef"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
