class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/orkcc_darwin_arm64.tar.gz"
      sha256 "7360bbf8f42691ea472548c88d198227d3d12c33fcf2f1d58866e307b1e7c01c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/orkcc_darwin_amd64.tar.gz"
      sha256 "6ee57c2f1a11ee28cd062cfa6326c365b58eec13810040ddee7a629b4ff5b948"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/orkcc_linux_arm64.tar.gz"
      sha256 "4a2c7e9ee951e9eae0ee93f8c6b38c219de9743b72a64d6f3cdf9d61e217fa71"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/orkcc_linux_amd64.tar.gz"
      sha256 "8837ea4ae75712bae3da4c3daf4914afa4b499218aefc6fa14ce741ea2498763"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
