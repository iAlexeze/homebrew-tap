class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.13"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.13/ork_darwin_arm64.tar.gz"
      sha256 "74537495f7afed4981623ea46ec796d8ec063c76ce1e2188155494dd9d453f26"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.13/ork_darwin_amd64.tar.gz"
      sha256 "d2d035b6337ea57826e0ec0f6a6b47aa5c7df32a0d9474fafa792f1b51778cd5"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.13/ork_linux_arm64.tar.gz"
      sha256 "a6131eb2693da67c119376dcf3f434195710704a133ae8f4fcd236fe136c9c3b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.13/ork_linux_amd64.tar.gz"
      sha256 "96da9d4cd3076ac74d663890d1abf36162e13c666aeb05f174d6c619eb5d61bc"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
