class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/ork_darwin_arm64.tar.gz"
      sha256 "742698d26325828b08ae257a30f9add234ec8a94cc61588d93338db65e88c2ad"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/ork_darwin_amd64.tar.gz"
      sha256 "743e115100fe99194d05601037dacdf5e0eaf92f1e7cf0344bbfca01dbf46040"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/ork_linux_arm64.tar.gz"
      sha256 "b862ae70a761c7e712e3b4e0023e895d2dbfad91cf21c129d407f21393871440"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.6/ork_linux_amd64.tar.gz"
      sha256 "797c8b7bd3a3d63c1bc3170ab71805bc1815b3607040444c69f4497ee8454d09"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
