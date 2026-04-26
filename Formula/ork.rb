class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.0/ork_darwin_arm64.tar.gz"
      sha256 "68e854f15f844cb0e669da1913e1f904b8ec7f25c709ae4e4b3865bddf841c59"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.0/ork_darwin_amd64.tar.gz"
      sha256 "285de8e8d64597f4cbe650408d20366e3f8146488bb7874e9032bef0f975b279"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.0/ork_linux_arm64.tar.gz"
      sha256 "98ddd113989736e704a85545f4918f04a39d5c36c2fb8cf241330378b2883e03"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.0/ork_linux_amd64.tar.gz"
      sha256 "fd8bd442215d005521ccc68bb1eb27e17be7f8a091c85c3090f38b9d6ebd3583"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
