class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.5"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.5/ork_darwin_arm64.tar.gz"
      sha256 "90f07d895a1360fc76d1ba5078e70925e2184a9e5ab8b2b047efbbc492c82f33"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.5/ork_darwin_amd64.tar.gz"
      sha256 "cf41fa602bd54c194a1e360a433008bff8d1fa65703b58ae0abf2082bee0630d"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.5/ork_linux_arm64.tar.gz"
      sha256 "ec8342ca5ffb2e0378857d0c13f3d1d9b2effc442ee695936b0ce5dc92fcfac8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.5/ork_linux_amd64.tar.gz"
      sha256 "ed56abdc171409fa08d06c7e86dfe9df9aa96e1f4ce55ea3211617b8f1b1bf54"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
