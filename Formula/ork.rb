class Ork < Formula
  desc "The Kubernetes operator runtime that needs no programming language"
  homepage "https://github.com/ialexeze/orkestra"
  version "0.1.6"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.6/ork_darwin_arm64.tar.gz"
      sha256 "1c25617b9c0fcfba1bdc79bfd3fb9d5c0f9884c34c740f58158c4948d6a03f44"
    end
    on_intel do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.6/ork_darwin_amd64.tar.gz"
      sha256 "7588b1bc8a4d093d59ce3ef1ee0594ed01d61fb237f754f9af3d142afd3c1cc9"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.6/ork_linux_arm64.tar.gz"
      sha256 "177370f4265a96072790247a8dc4cc83cd61c95998bc275ca4df47c0e48354cd"
    end
    on_intel do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.6/ork_linux_amd64.tar.gz"
      sha256 "a0ed56ecfa2fa5bf028dffa007d21521d4e32669bd29a7864d6277f0451769ce"
    end
  end

  def install
    bin.install "ork"
  end

  test do
    system "#{bin}/ork", "version"
  end
end
