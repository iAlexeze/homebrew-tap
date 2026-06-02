class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_darwin_arm64.tar.gz"
      sha256 "12ddce5aab27cd765e39fbc6b950312e176d864ea121ae81a70d74e69b125e32"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_darwin_amd64.tar.gz"
      sha256 "5c2be51cae5531a63af9922620a0b04c47b0fab6ab88d369a51739c42cc1e944"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_linux_arm64.tar.gz"
      sha256 "ef6ea6a84ab39aa7a9bab00675442b80377e4cfb3ec3fc4aeed7df66605773a0"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/ork_linux_amd64.tar.gz"
      sha256 "ff79021be2e224bc48477907853f33057c1befc48fd7e340311f15b502a3170b"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
