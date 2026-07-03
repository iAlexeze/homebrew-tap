class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.9/ork_darwin_arm64.tar.gz"
      sha256 "1b98d0d100d0ae03ee0223ae70bb96424b8e1a5154d070678c8ebe29a0afa140"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.9/ork_darwin_amd64.tar.gz"
      sha256 "1f6ac16773500d41d14e867e364015638069a22dfc3966a4839eb51882a9237c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.9/ork_linux_arm64.tar.gz"
      sha256 "d6a6a4e68167d6d30fba1bf277e6bbf684a4a0bf91bb8d680c35fecd0dea6f59"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.9/ork_linux_amd64.tar.gz"
      sha256 "dd06cf049d4df0dcc734e70fb6f979303c2deaa3b7e6800667a11f0baca57a91"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
