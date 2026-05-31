class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/ork_darwin_arm64.tar.gz"
      sha256 "a06be494c14b804176e14aa3b0e564b0cab1997948fd292f905e560906951343"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/ork_darwin_amd64.tar.gz"
      sha256 "924453a7ebef9091d2df26f48981409da362d3476d81018604160d6e47aca73d"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/ork_linux_arm64.tar.gz"
      sha256 "563e0abb2de72a4d591cae5c8719c05d235600dbd2ceb576f46b3e359e606359"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/ork_linux_amd64.tar.gz"
      sha256 "7dddab96becc1f090267c966ee3ed47fc13af1a0ae0fb9e123c3337877f74835"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
