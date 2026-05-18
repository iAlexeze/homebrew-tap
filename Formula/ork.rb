class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.8/ork_darwin_arm64.tar.gz"
      sha256 "e857a675d7a84f8160cd8ebdef2bf339c82a92cf7223a550760b58a2d0591692"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.8/ork_darwin_amd64.tar.gz"
      sha256 "fb4ecf403927b77aa9eac850893c76775f9aed2879ab5235849ad63031e29b13"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.8/ork_linux_arm64.tar.gz"
      sha256 "63f7f19f18ad683d370e108da1cb4b23d36bc84d71639ba53c88a34b03b99bc6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.8/ork_linux_amd64.tar.gz"
      sha256 "035b37b2aca30b799aa0735cd12d04ffe357ca63f63599d6f4f136bafa5d5883"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
