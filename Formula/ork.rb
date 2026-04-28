class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.1/ork_darwin_arm64.tar.gz"
      sha256 "3822d15732fd5e8e8e7b4decf674c65f6ae63b4a09c33b3a7520708471a9c6eb"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.1/ork_darwin_amd64.tar.gz"
      sha256 "bcaa74480bf05e06643de0e9c49d1dbe189e07ee8a83fa241bcd0aad49c0d6fd"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.1/ork_linux_arm64.tar.gz"
      sha256 "b4fb5f202d941c1706221fefa977ec49eafc543645cf96a3b7aa9b778926cfad"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.1/ork_linux_amd64.tar.gz"
      sha256 "b57b43cda359f12d22a026bac94e167140a570c08a2c7b6ac6b94473a34f1346"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
