class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/ork_darwin_arm64.tar.gz"
      sha256 "0e9fe3bcb2aee5ec0eb3dbe72267d372c7f21155e2baacf7e9c95f45c4d55e13"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/ork_darwin_amd64.tar.gz"
      sha256 "1cdeeef74d9c0e0db4a3683fea7ef3ac4fb23cb403a79fe086e6b08dd739f53a"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/ork_linux_arm64.tar.gz"
      sha256 "969c8adf866b01ba40b0bc12576073885b56e202b066b9d27bd6e914c1bb490d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/ork_linux_amd64.tar.gz"
      sha256 "b9c34315febd24ea3be5f82fd2b1d37fe58905db1b2c7bab062d5e932373a828"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
