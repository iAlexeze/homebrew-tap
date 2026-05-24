class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.3/orkcc_darwin_arm64.tar.gz"
      sha256 "9c72969c233d1cc2c9df860fdfc21ad3a44a7198829c9de0d48a78d7c46731ba"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.3/orkcc_darwin_amd64.tar.gz"
      sha256 "f7089253e029a877ca09f04ebed6c44b41fa1eb10cd1f169dddee404b52b5559"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.3/orkcc_linux_arm64.tar.gz"
      sha256 "23fe834fc4ccf5fa7299d6e771032058d31f99a4d6cfd06c45632b531abfa05a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.3/orkcc_linux_amd64.tar.gz"
      sha256 "2c8f2cd09ec8b810695bbf799e23298ba905b93211ab27806c9951bb887a06fe"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
