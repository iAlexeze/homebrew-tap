class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.9/orkcc_darwin_arm64.tar.gz"
      sha256 "6ef127ab7f87fce6cd432ab0bbd56cc4f92eee1a11acb1de500c2a597bc256fd"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.9/orkcc_darwin_amd64.tar.gz"
      sha256 "9385e017523f6354ff36801d500f50a4952f3ed156c9b61865eb5f1ea6201d41"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.9/orkcc_linux_arm64.tar.gz"
      sha256 "ea2ff9e4ea20673449b31312246297e6a45c571b5b2ae38a5f950efc35aba0de"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.9/orkcc_linux_amd64.tar.gz"
      sha256 "e33387e6bc8b5593704e55de6bd00f02392a20688bc9bdff8d6e69a018e06785"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
