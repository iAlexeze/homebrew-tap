class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.2/orkcc_darwin_arm64.tar.gz"
      sha256 "c9ecdec72b42ba9f7d1fb15ffa02a9b8e262a64e31db2086927b0845af1e86cb"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.2/orkcc_darwin_amd64.tar.gz"
      sha256 "031171f5bd60accd891dd1c060c2424cc45dc3376aa8c5bed19e39c5096fd40b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.2/orkcc_linux_arm64.tar.gz"
      sha256 "045296afa546dfeb8a8ea454736c38271829a57ed3a628d223b5ddaa46b59652"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.2/orkcc_linux_amd64.tar.gz"
      sha256 "c5847485b7ed60ce43825c9c0d4baf60965bc008fea77f6a6995de3c0f5bae2d"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
