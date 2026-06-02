class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_darwin_arm64.tar.gz"
      sha256 "b75bc63db7ec6573f6f934aab1b2d644872df7585f17dffb351b1f396931c912"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_darwin_amd64.tar.gz"
      sha256 "6e7b0dfe12c1c63a2a2332a9ddf726f8db4079e273bd4b6206882a05cf9b6a51"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_linux_arm64.tar.gz"
      sha256 "7390919eaff10a40f5cc3443d97754ed0bc1b2dd71cb3b5bfeaf5b6bf9222073"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_linux_amd64.tar.gz"
      sha256 "73fd03093b1d0f2407b0505d493e147c173f8b0288fcd9dac93be1786751dba6"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
