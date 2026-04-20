class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.1"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_darwin_arm64.tar.gz"
      sha256 "b2c51a9887d6fa49d63e516dff4c8ebcdddf81e81325d8ee806f9b77efeaa729"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_darwin_amd64.tar.gz"
      sha256 "9ff9ff894e334805700f4c67d9a09b7de6fb91000cb0c7b9413374b16293f31e"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_linux_arm64.tar.gz"
      sha256 "3d6e3056da424d2f6b9af2ec4e714b66676e82ae2d798cd5b91ba1f898971b13"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_linux_amd64.tar.gz"
      sha256 "db0aee4796d8f9a51a3f5aa875843a5848c3267d0672c87d14eaaf13b0803657"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
