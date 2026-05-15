class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_darwin_arm64.tar.gz"
      sha256 "9862be25186e6a698d9270203a67b82ae1cb4d151e5a98988b928841a9bb45d9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_darwin_amd64.tar.gz"
      sha256 "435da72afd0667b33283b7d8d7eaa2e429af18ef543780341e2347a4fa567cd7"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_linux_arm64.tar.gz"
      sha256 "57a865a2ee77582da0e1c8fb4ed17bdbf24b35810904a828a92af33bafd45cdf"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_linux_amd64.tar.gz"
      sha256 "ea7141805e72234a6742a80a1cf613e80a4bbaba07a6fcadbb5fabdcdb657e26"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
