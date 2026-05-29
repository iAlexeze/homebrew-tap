class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_arm64.tar.gz"
      sha256 "dd10bfa9c334eb9b378eeb6ea064767fd96b20985d756ca48b6b0aff8097459a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_darwin_amd64.tar.gz"
      sha256 "179244cb08f97afa4b1ab085c2fe15302daa20cae8140f3a1f00f5a5ee990ffc"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_arm64.tar.gz"
      sha256 "ca45e703cdbf4bed26afac03fef3430fa531585f7b56ce7535aa5bb0da418ca8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/ork_linux_amd64.tar.gz"
      sha256 "e1aabb497c8bdb7e5870ea082e5810f1ad6877a31ba67a65bf607c438739a363"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
