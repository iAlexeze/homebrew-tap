class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.1/ork_darwin_arm64.tar.gz"
      sha256 "f06ddd632283b60b9ded4fa6579a20d89709cbd4d8e081da10d928d9fcc3d2ed"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.1/ork_darwin_amd64.tar.gz"
      sha256 "8169488dfa0773d0c7ed1f2e0ac767f38dc9f3f589f9cd55516da469e96fd3f7"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.1/ork_linux_arm64.tar.gz"
      sha256 "7b116f4a6d2501717f1f239f942d0b308450e60f647bb0f1b5cb207c9721b460"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.1/ork_linux_amd64.tar.gz"
      sha256 "80337a01081693700c811d0464c85a5bbe79a71fd9b0343433946de13e9019cd"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
