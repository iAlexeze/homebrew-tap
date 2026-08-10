class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.14"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.14/orkcc_darwin_arm64.tar.gz"
      sha256 "1ed72ece57329d1dfdfbb21516930fab6cbc304d708086f182de458cc27dd4f5"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.14/orkcc_darwin_amd64.tar.gz"
      sha256 "82c19875af52aac34bddc2b4716520bce444beec0f64d0390715f334461b9864"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.14/orkcc_linux_arm64.tar.gz"
      sha256 "bb65a67ba5e8151e4e9b2a2504fff009ae15c3f90eefd115756cf4bf28a4f92f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.14/orkcc_linux_amd64.tar.gz"
      sha256 "495a43a2b0406ab5f83ba1f4f48e0ea2e19947102c9a15fb14f03468b2a9832d"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
