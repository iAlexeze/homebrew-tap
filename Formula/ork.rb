class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.2/ork_darwin_arm64.tar.gz"
      sha256 "43d30e70f8ead238f99fa382100bf8d97942238e0625a09efd9c59708221332e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.2/ork_darwin_amd64.tar.gz"
      sha256 "363504af41a4a1dbc4057eb12e50c77f5441d1c1eae8224b1c9696526e24beee"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.2/ork_linux_arm64.tar.gz"
      sha256 "69ac40a83c8e172d41636bed442730d431ed50e6aadc42eeac693087c41ad93e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.2/ork_linux_amd64.tar.gz"
      sha256 "f15795db6d6a5e92a2c582c33da5d07175ce15890a9b53916d61f27b136dca12"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
