class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.8/ork_darwin_arm64.tar.gz"
      sha256 "5c70185940939398843f532734ba572b97e1bb677b2a66c0f23188f89155ea2c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.8/ork_darwin_amd64.tar.gz"
      sha256 "96b68acb3e3729a4508020cd543e7170788e49a2976f016f84c5b537bf88a5de"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.8/ork_linux_arm64.tar.gz"
      sha256 "a673b4b365fe20cf29460d679d7e28b4ff14bc811bc9e186a8ab6d72dafbabee"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.8/ork_linux_amd64.tar.gz"
      sha256 "3a6f5d69d5048d6d8a8fbb2291b64e96932d3920431fc7a35292e2e09fac6d61"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
