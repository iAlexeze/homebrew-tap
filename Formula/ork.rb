class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.1.9"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.1.9/ork_darwin_arm64.tar.gz"
      sha256 "2dd686dc06012fb50de1308fa30b63313275570d7ebcb22a0bc86c07a26a06a7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.1.9/ork_darwin_amd64.tar.gz"
      sha256 "f1243c0a5fc325b6a702563bb308c634bca5edab45ed24d9de48cfcb309cf7f4"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.1.9/ork_linux_arm64.tar.gz"
      sha256 "5b0ee1bdef9bd1ad1ac54b797d753dd90f9619275e2b2e651a624e9335ddbc93"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.1.9/ork_linux_amd64.tar.gz"
      sha256 "2350ee624fdc0a00f444e49a19b1832d20065e754697c2d3f94cfd84f4c617f8"
    end
  end

  def install
    bin.install "ork"
  end

  test do
    system "#{bin}/ork", "version"
  end
end
