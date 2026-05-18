class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.8/orkcc_darwin_arm64.tar.gz"
      sha256 "1e4983176f0b1653b6571ff5e1c2d6273cbfac4e09a082e64aaea4f567717a9c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.8/orkcc_darwin_amd64.tar.gz"
      sha256 "e881aadff0581f710b730b6000ff4f5a16fdde6122735b68bad1e77e2783823a"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.8/orkcc_linux_arm64.tar.gz"
      sha256 "f165c7d5c29c4861b7090289d879cc55b47d9d0b1b2d55ad7475ee97bbe1a66b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.8/orkcc_linux_amd64.tar.gz"
      sha256 "35bf8d81dd7e029d288d3806b1634895cba37f3d518a3da1117eb59d1387e0b6"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
