class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_darwin_arm64.tar.gz"
      sha256 "c4e6f318966a0b1dd213afca4618c36bd3970ffd394fd033174940a4cab77827"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_darwin_amd64.tar.gz"
      sha256 "cfb0937cef7c84d02e79c0b15b2d14fe65fed31b7cdbf300b205a1a4bcbe64d9"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_linux_arm64.tar.gz"
      sha256 "3330ba69a3e074b1f3acc392dc577414d79f3e992dff2e8d094bade453e6c567"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_linux_amd64.tar.gz"
      sha256 "4f83b56f6b833d811596ab46bd1ef81f2e5354bb9f5d0ae3d9f8ca349be71d25"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
