class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/ork_darwin_arm64.tar.gz"
      sha256 "8c212c5f3aa330675e5927d717b1672017d7578b79b3979b4b69c72c1d351fbe"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/ork_darwin_amd64.tar.gz"
      sha256 "f62a27a0981e0df0300c20203da41dcbd047a76655cf402a4bfc2e355cdff199"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/ork_linux_arm64.tar.gz"
      sha256 "6048212d4bfb1e946f572c3c33546881d9c4f7ea56bf66bdafbdc032f6f21529"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/ork_linux_amd64.tar.gz"
      sha256 "095168b05fd879441ee621756b1a446e57b28b769f5fe519a6865a67de83da9e"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
