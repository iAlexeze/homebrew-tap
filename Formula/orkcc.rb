class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.0"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.0/orkcc_darwin_arm64.tar.gz"
      sha256 "81592dffe830b6f04887aa291cb47a79124abce1b6af814fbbba9b27e1a90f99"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.0/orkcc_darwin_amd64.tar.gz"
      sha256 "3b444fe7adffddb79d876be0e4821f92e62abba1c0ad386fcc57e21c77d00a21"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.0/orkcc_linux_arm64.tar.gz"
      sha256 "44a6a0ef376fcee3131ccc0f8306815158ea79d608f20329a47378719996673a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.0/orkcc_linux_amd64.tar.gz"
      sha256 "cda9e0bc02289f1d8336245f48935b41b9376d7240ba66d997f18bb90467a238"
    end
  end

  def install
    bin.install "orkcc"
  end

  test do
    system "#{bin}/orkcc", "--help"
  end
end
