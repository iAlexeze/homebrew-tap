class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_darwin_arm64.tar.gz"
      sha256 "751d538043998272647f8b2fd72647f7ced7fa82d1dcc25b7c0de9945ce4b6a7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_darwin_amd64.tar.gz"
      sha256 "fecdacb51accbe9dce5b382ec1f02dacf055bb786a6c05e156be790368230211"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_linux_arm64.tar.gz"
      sha256 "ca8ea48597ceb1372eca08dc20d7f769362f5f79cd9e2cf24fd10e44b35de5b9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_linux_amd64.tar.gz"
      sha256 "7eea128ff2c9dc409506fe980f095cb5cb3a2cac2b90627f3006460a6240f38d"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
