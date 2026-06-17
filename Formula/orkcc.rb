class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/orkcc_darwin_arm64.tar.gz"
      sha256 "792ced234998502e8d541b70c1ff5f9182b3cb6ab54714d3d3ac5f9b0afae4b5"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/orkcc_darwin_amd64.tar.gz"
      sha256 "f6ca74ab7bab36ffcc52e11ef3225cc7548ff1504254c59eccf0c84984dca3d8"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/orkcc_linux_arm64.tar.gz"
      sha256 "3d63de24ae320ddf8e69182b80ae315cee43cf76369d8034cb0d930660549e92"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/orkcc_linux_amd64.tar.gz"
      sha256 "f8deb65b49118c7440ffbb067b42832b61913c88ffc14745b5472d9103e3b0c4"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
