class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_darwin_arm64.tar.gz"
      sha256 "da3ce41ee897f1d769eb187c01664323306053c14eee4009da12c90ba443f984"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_darwin_amd64.tar.gz"
      sha256 "4506356b81aa8046689e2ae0f976937ddf1547e2dbabfd7ba8fe5aac78cb46c0"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_linux_arm64.tar.gz"
      sha256 "1b5569b0d2423d17b54f14596cc58658ed6482d7007fb39257696c67bffca97a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_linux_amd64.tar.gz"
      sha256 "b24fc54e808562614c9e7451ab75bab1ed29136cdad016980f046353bbe29c9a"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
