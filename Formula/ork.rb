class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/ork_darwin_arm64.tar.gz"
      sha256 "b2d11d3622e1cb1a04bcf64c05cd1fad13c426c64dc9baa799315a7580f6fdbd"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/ork_darwin_amd64.tar.gz"
      sha256 "067c8063e1d19c6a289f1d0437df28f1492a9bd084e7e197c54b139aaae88c30"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/ork_linux_arm64.tar.gz"
      sha256 "f0b7532e823c826d18616ee9cc7f8ee01037aa6bc927405325abb264d15ad047"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/ork_linux_amd64.tar.gz"
      sha256 "bd577bda9bdb3d832f908ce6292db3a46d3abd6b7f091331fb94df48fd4f94cd"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
