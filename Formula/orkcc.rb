class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_arm64.tar.gz"
      sha256 "4c2cb75b9cdfc8cd73ba45c5b9d753dd37265c80b0f7ff382bd94b67e1702c2d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_amd64.tar.gz"
      sha256 "5a168c2f107dd4c5c5a561548650919a357414364c071d82ebeb0047db7234ed"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_arm64.tar.gz"
      sha256 "0998f6f77e188c922ae18b35f5684d9ef9ce08ad8c667f6b3f0a665bede485b1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_amd64.tar.gz"
      sha256 "d49bca64d2ed82ff2b409e1dc5268e6d6dd7a4332ccd52e5b3fd289561c31fd4"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
