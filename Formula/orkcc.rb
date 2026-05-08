class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/orkcc_darwin_arm64.tar.gz"
      sha256 "54dbdf0ccc20bd1c6c98e40a7a57d8d529858cc1248c1cd37169329aa1af2c9a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/orkcc_darwin_amd64.tar.gz"
      sha256 "5a510684d65e934025e3ef9e6ba9a31e2ac64b4efdbd5dcbc74328001ad41d6a"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/orkcc_linux_arm64.tar.gz"
      sha256 "a8add2860e7370f9ef9c9d2b7a8437edac0c1f3c59416ecec3b317cb2a711410"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/orkcc_linux_amd64.tar.gz"
      sha256 "e5d7d830770fd686bcea71da0680631a3249fc94c8bacc0c29d4e18b5699a1e5"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
