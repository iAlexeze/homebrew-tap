class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_arm64.tar.gz"
      sha256 "930120d724bbb7ab714f243015bc501211a674d64b493d7f19c5e206be9be11a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_amd64.tar.gz"
      sha256 "ee00ada6071b027407b71be27009a6f57e587615f6bb00968c07c5acccad7955"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_arm64.tar.gz"
      sha256 "31b9ce7cfc3978ce7b53099a765f92fc90bb90285fd41aa0b9bed226bbc2d402"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_amd64.tar.gz"
      sha256 "80aaf10d75b4bf176312e6982c322ea856848ddfc92b200e8353c6103124c6dc"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
