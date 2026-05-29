class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_arm64.tar.gz"
      sha256 "a5b4ecf7496a1d056d4b7d269cd739eaf8f9a267d8f5cf56492523acc8605d88"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_amd64.tar.gz"
      sha256 "e97dd6b3be9ac7308ca9c69d41477480c76fd3a32c5c9f5ef093aab7b48bbef3"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_arm64.tar.gz"
      sha256 "fa7cb3114442d5cdf91b8a7af4cf05188da4d8bcb33985b55e75f72d421e96fe"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_amd64.tar.gz"
      sha256 "5e13194137328ab39f352f7e49cdbf6ae2649a561601f136030ae8b0f4ea9276"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
