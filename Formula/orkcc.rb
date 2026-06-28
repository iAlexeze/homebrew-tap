class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.8/orkcc_darwin_arm64.tar.gz"
      sha256 "b1f5d391d7955ed7a2dd8c591373219ec76e5526cef6123bdcc5c574ceda242d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.8/orkcc_darwin_amd64.tar.gz"
      sha256 "472497f8106526c6f977658919aa2d64d5dc9885e3dd18158f0891531954e858"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.8/orkcc_linux_arm64.tar.gz"
      sha256 "98a386603d466324005e5f8edbaf8894a74e2633d2e2f58d8ea4a7f8e1e0667c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.8/orkcc_linux_amd64.tar.gz"
      sha256 "fa964c23502441a816830e8b24a0e96e2b67d3d23fa95d0d0099fe6d2eb795aa"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
