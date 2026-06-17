class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/ork_darwin_arm64.tar.gz"
      sha256 "a781956a7d57fb385f25e3730589b6b925584aaeb1458560110fe794742c312b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/ork_darwin_amd64.tar.gz"
      sha256 "33fe6058382fca0527c8db02b2a77cbc1d1c32e53912b363b147ea7cb20fbcec"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/ork_linux_arm64.tar.gz"
      sha256 "b3178f7ae320a5a4f1f904bd2341d50916435c0b0d31dd0b222323aef6072416"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/ork_linux_amd64.tar.gz"
      sha256 "a75f608b103505a6161c16e992d0e14d7435cdc7c672cf8a3937c34fba700da9"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
