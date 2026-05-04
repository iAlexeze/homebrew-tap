class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/orkcc_darwin_arm64.tar.gz"
      sha256 "e2feb5ca9396def72fded47cb1c921f886f5b8d146e42b9df55f35812e1b7955"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/orkcc_darwin_amd64.tar.gz"
      sha256 "cca209c04173202c5d222ad172339e7576c2c1c36a29a04e293f78053a7fd2e7"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/orkcc_linux_arm64.tar.gz"
      sha256 "8f3da38c8f6c03c643c95959b4f89116022751b0578e5f5fa4876ebd6d7854c0"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/orkcc_linux_amd64.tar.gz"
      sha256 "71883096e1ba859c4cb0dcae610736fd05314aecea8151cc33724ba95bfa6528"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
