class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.10"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/orkcc_darwin_arm64.tar.gz"
      sha256 "32b1a63eeb4ef810dee67cb732395355f2060b44a69ff70430ff0457076165cb"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/orkcc_darwin_amd64.tar.gz"
      sha256 "a380a4cf97fac2989c29cb1677610fdbcf462ca5e4ad38797733d382b097ba27"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/orkcc_linux_arm64.tar.gz"
      sha256 "09ed0d97024b2f7bfaa759d283f0be21f13d03a467acbe5801a8e315f9a43fba"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/orkcc_linux_amd64.tar.gz"
      sha256 "230f0758d8076e0ba741b309b0971b8d882d9082dd0c996a41e7da8d03036d4d"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
