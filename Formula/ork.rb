class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.10"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/ork_darwin_arm64.tar.gz"
      sha256 "783d6ba9f3d4aa150a06716ec1179a1bff4516d2c128152062ff8eb0e7784c9b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/ork_darwin_amd64.tar.gz"
      sha256 "4a2b0020624556e50c6f0a281a1505e411752b5ccf7b5ddef3550f80fd6899f2"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/ork_linux_arm64.tar.gz"
      sha256 "4b2d52e5f37bae0772ad9210f6ab626e4ae158d10d7efcc9a6eacfba8afadada"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/ork_linux_amd64.tar.gz"
      sha256 "06739e3af9bc1532c4261c86bfbb002e294b293fe4ebcb5831b0e117370fafdf"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
