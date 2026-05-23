class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.1/orkcc_darwin_arm64.tar.gz"
      sha256 "5d5550c6ee46a09919bfd651d16769fee926d8a8bb89b2c08b75927e3ff40b9f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.1/orkcc_darwin_amd64.tar.gz"
      sha256 "d9c4fcf28b2c5fca287e31473ef4b98d4e110e3a86ca8af03fe75209644ae5f3"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.1/orkcc_linux_arm64.tar.gz"
      sha256 "e73418f752da2cfe230d8a72748fad15c6a31d1f0801b9592f925ca2792100d6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.1/orkcc_linux_amd64.tar.gz"
      sha256 "0ac7531c99c75eddea65df8cca2080cfab763d09024e1dbd4345de475ee042fb"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
