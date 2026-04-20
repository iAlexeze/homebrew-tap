class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.1"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_darwin_arm64.tar.gz"
      sha256 "34cb3037243e5b4668c8decdfa995daf45d4d890bd7f3651d53bcaadfb4df6d0"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_darwin_amd64.tar.gz"
      sha256 "62ac5422a227d7d471048a669d1d928f0644b92b920477422cfa067f6864243e"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_linux_arm64.tar.gz"
      sha256 "97af39da46ae32ae082b7bffee0cfbb673741c8357dd3e30852533eae61a53b8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_linux_amd64.tar.gz"
      sha256 "1887174a52345d7ee5c8bc34672d1ed6ad09519bf8b6865d3cde11b71759c57d"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
