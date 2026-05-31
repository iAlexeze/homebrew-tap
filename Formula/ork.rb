class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.3/ork_darwin_arm64.tar.gz"
      sha256 "65e8f139c98d3bdaf288878268301427b4d1e9a4e7754bddf216a513a7c9a001"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.3/ork_darwin_amd64.tar.gz"
      sha256 "2cea8f9e975c60e9998f6906023f732a03c1edde5c9ed347d0117040d3ef16dc"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.3/ork_linux_arm64.tar.gz"
      sha256 "d7d40ce54608e5ab511af68d7486f35f5ccfdc5e4f77c4daff494c319ef7b1b0"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.3/ork_linux_amd64.tar.gz"
      sha256 "39236fe0c92df39ff94456e8d17246cc3cfb85fb457b2923246b3c8b21c4ec99"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
