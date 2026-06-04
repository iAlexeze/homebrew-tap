class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.1/ork_darwin_arm64.tar.gz"
      sha256 "9dcb1c228648833ed430c88cafef2faa749beb79d816e97c7763594d635ba783"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.1/ork_darwin_amd64.tar.gz"
      sha256 "2bcb147f9fc0526ef7e7974554522c5e8e8852e9a2231689a77ca15069d44e85"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.1/ork_linux_arm64.tar.gz"
      sha256 "75daa529e1cc748800f73f930b122fe2b7217b9df506cb659d9caebdf9bef93b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.1/ork_linux_amd64.tar.gz"
      sha256 "122b14cb3becba33585c4ef147535be83242ac79d21354a20e0534e8c1522824"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
