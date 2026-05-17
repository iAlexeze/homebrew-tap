class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_darwin_arm64.tar.gz"
      sha256 "f16524005e36d9cbad80073ed05f788e1441e7c64c9087491ceef6dbd50c5a4b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_darwin_amd64.tar.gz"
      sha256 "a1a40324a463ec3d1268867e7f6a231698c3c78958e7c78bf7b8390fbad62145"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_linux_arm64.tar.gz"
      sha256 "975c56cc1c3a3330b5de31ae5673ed50853385a233b48ae9ecbf30e776213723"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_linux_amd64.tar.gz"
      sha256 "839d0262d12859c6bab2750f2b247794385d0e8a4441a2343b1270fb143d1397"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
