class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.10"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/ork_darwin_arm64.tar.gz"
      sha256 "5c083c234984b2bbc86ccedc654df4ca06df20618f7eb72a13655a17306bba00"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/ork_darwin_amd64.tar.gz"
      sha256 "fac058510f11916d242aa9effa8e0fe189588fd008f3afa51522137583ca3e72"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/ork_linux_arm64.tar.gz"
      sha256 "56a1b64fe17633d206a1cba97a9d8d1e97454494c7464d183107bc38ca6e1fc2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/ork_linux_amd64.tar.gz"
      sha256 "a50e55954616be6fca248f9e6ff7fd7c503faaab1fd1d10abeae2e3a1737c97b"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
