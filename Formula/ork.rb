class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.8/ork_darwin_arm64.tar.gz"
      sha256 "04f904e9facda80a86ff13fd2c39f2e1eb17f57fafd155c94e04a30cb6fbb8a9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.8/ork_darwin_amd64.tar.gz"
      sha256 "76bc33b3ab9973147254410a922aba79066d63d9618564afc672e4897f63ac5d"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.8/ork_linux_arm64.tar.gz"
      sha256 "6f45ea9a22ef3203bb8c38b1e5732cae3f31e00a1802cdb6294b9dd83208a889"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.8/ork_linux_amd64.tar.gz"
      sha256 "cff5004fe2afc264e99c86cd665ce7f486f80d5cecaa8e6f599a18ee85d75bf8"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
