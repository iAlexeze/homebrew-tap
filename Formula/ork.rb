class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.9/ork_darwin_arm64.tar.gz"
      sha256 "2081e7d673eb020e0a0f1df91c9ac23ff6c4636d85410a4ec2d1be8fa415b9cd"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.9/ork_darwin_amd64.tar.gz"
      sha256 "c5f8e8c41dc245803bc5e33be33f2973e9beca8603010bba73d22612b656c941"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.9/ork_linux_arm64.tar.gz"
      sha256 "fe918f5da33ee98cf3e81b3976282e28bae6afc5a9fad258d0ee072a567da570"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.9/ork_linux_amd64.tar.gz"
      sha256 "61372df41795fd5244a615aac50588ac40cee94fcd1c55aa1a73debdd8e2b9d6"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
