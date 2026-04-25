class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.7/ork_darwin_arm64.tar.gz"
      sha256 "0ce5bfea88c83895b151a7205a6738f4b94c60525b2f856cb4b0265caf67be78"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.7/ork_darwin_amd64.tar.gz"
      sha256 "821eabbe7f09cf46f752ee03fb485fbdc030a0d324cda6852d67ff6abf5eec3e"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.7/ork_linux_arm64.tar.gz"
      sha256 "ba91a0c4794d0ef56d3add66e0b3cbee7797a0213f07f19c203bf7ebc788f9a3"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.7/ork_linux_amd64.tar.gz"
      sha256 "b9c10c9298d102c6e0524ed0cc19685bb111803ff5a26a9f04b6a0e286147bfe"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
