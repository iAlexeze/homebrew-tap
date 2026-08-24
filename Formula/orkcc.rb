class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.16"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.16/orkcc_darwin_arm64.tar.gz"
      sha256 "cc35f15e2dfb3914ebfc10bf6af071a8eb1831e3349732a7ed618de8eb475fdc"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.16/orkcc_darwin_amd64.tar.gz"
      sha256 "cc2aa36f667ee0e6f29514197679b7571f584b7eba608953a1045d526ee1a868"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.16/orkcc_linux_arm64.tar.gz"
      sha256 "496fe534cebacdd8f8b5f5635a95f93f8699c88a4766aa2ef39f615dc7d13c3b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.16/orkcc_linux_amd64.tar.gz"
      sha256 "74f81e4f17dc185ca7ef622769af743706cea844531495f2ae99969587342b24"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
