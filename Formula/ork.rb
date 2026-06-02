class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.6/ork_darwin_arm64.tar.gz"
      sha256 "c1a9f99c400bb3dc382994f806e7daca9bd564a179016b396777c3f42328bb8a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.6/ork_darwin_amd64.tar.gz"
      sha256 "8058aeef8d92ef55cd7ee1b023e8133af427a30830a20d2353a9959ac419da55"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.6/ork_linux_arm64.tar.gz"
      sha256 "d6eea2208d97d294522a5e0f418e6c0f4e4b7ac970b100cc6c07527b68bd96fe"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.6/ork_linux_amd64.tar.gz"
      sha256 "adaf7a5ba3bf9c6cd93a8d9cef808184bacf1c27a003f82da7de1014fd69a575"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
