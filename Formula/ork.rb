class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/ork_darwin_arm64.tar.gz"
      sha256 "e9b952c9f3a0b9c62b986781369ce8c481553328961e818bce1f22ad7bde9d53"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/ork_darwin_amd64.tar.gz"
      sha256 "12261423293d87847676bff2688b9900c492687f9762377185962794e107b2be"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/ork_linux_arm64.tar.gz"
      sha256 "928349cd0e7005ba570c52e5514fd576b3af264a810ebddd0437cbe8c1d81679"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/ork_linux_amd64.tar.gz"
      sha256 "4a28d3f2949df51b21af5668a78ef8dd130b8fc7f7344e09271cbaa5fc6ad783"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
