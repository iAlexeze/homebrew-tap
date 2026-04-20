class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.1"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_darwin_arm64.tar.gz"
      sha256 "e5362e53d75dcbf0e3cbaf6ae2dfff3dfddb1d26eb7c7d33a696ab0eebdd8361"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_darwin_amd64.tar.gz"
      sha256 "50d4d7c10f981d35fa3b93f379e19bc5011a60851a2a06c8e42744e1a71dc4c7"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_linux_arm64.tar.gz"
      sha256 "8fc2fd82f110198987358bcbc29f3b939c95a03a0f0957ccf2ac5b3e9674b2c1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_linux_amd64.tar.gz"
      sha256 "e5c7c42043f90ad21b930fcaced971d6043f045c248c1c53aa1d081d42226c36"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
