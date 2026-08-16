class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.15"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.15/ork_darwin_arm64.tar.gz"
      sha256 "9f8d6829de2cfaf715f6ef4dd783281abc12db879d054acabdd2a4f9820743b0"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.15/ork_darwin_amd64.tar.gz"
      sha256 "dabd21628df8062bbe5048e576eaf0d02e51e7778c82e57609a031dfe6d3266e"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.15/ork_linux_arm64.tar.gz"
      sha256 "0e03de447aedfb8157d4addb7f7940c71f4924382df21d6b99d7ed739ce4a8c2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.15/ork_linux_amd64.tar.gz"
      sha256 "7f97a46da9b52c4cfa75138d9b15ee06e1fcfb777b6cea831c7555a6b3e0e9f1"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
