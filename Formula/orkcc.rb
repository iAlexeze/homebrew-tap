class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.5"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.5/orkcc_darwin_arm64.tar.gz"
      sha256 "98ff1a7e5986173fbf6014ccdc4150042df10c4fdff4cefd95a627a065e96cb6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.5/orkcc_darwin_amd64.tar.gz"
      sha256 "e493c2ae59d45b3cdd811245273eb7a72cd933c48f110d37fee665433e80dd8b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.5/orkcc_linux_arm64.tar.gz"
      sha256 "52d14deb785d6b3bd1f8f4186d6b037ea27c48d7eafd1f9613d6612106a3b3e7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.5/orkcc_linux_amd64.tar.gz"
      sha256 "da7114ba590b4ae00fa74a69c0a6efb52fd34d72af3c22c55b97dfdff0855789"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
