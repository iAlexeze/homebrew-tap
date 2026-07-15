class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.11"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.11/ork_darwin_arm64.tar.gz"
      sha256 "7ea1cbafbe78aeb8465c674d8eb7f7f16438f3383f313eb544e41f19211f26a2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.11/ork_darwin_amd64.tar.gz"
      sha256 "5e8a71cb6aac193e27791de77d0b3140feba89bb1b9cd2875fc5a9e9b0683c7d"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.11/ork_linux_arm64.tar.gz"
      sha256 "687b8d17add87e5e902ca63ae539faee395f76b9cc04684e77899704728a2b90"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.11/ork_linux_amd64.tar.gz"
      sha256 "a7bb4d08e3c1d5b313bbbf0c97711771bd4f01ace2de2666a5ef7bad24d54cfe"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
