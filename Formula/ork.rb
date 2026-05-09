class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.1/ork_darwin_arm64.tar.gz"
      sha256 "83403094e18efb7b7b7595e07d07eeee2c4786d6c2d899f86ac9b517d3a9b078"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.1/ork_darwin_amd64.tar.gz"
      sha256 "82798410123e761bef2258705f2976377c0ec1a63e57b4a7ec18bb60a5046c53"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.1/ork_linux_arm64.tar.gz"
      sha256 "477d35290684c181906044a7d991f57261f44eca78775603dd3b8e3f3fb265d1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.1/ork_linux_amd64.tar.gz"
      sha256 "34cab136dcde7904d22fb67a2f5227962d2cb756e5ff68e48953b8d8a27a9267"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
