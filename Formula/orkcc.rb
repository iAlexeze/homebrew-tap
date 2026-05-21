class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.9/orkcc_darwin_arm64.tar.gz"
      sha256 "749f82d15c2605f6a66624bff8a269e8ce649bacac6d0891eb50de958bf38e8f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.9/orkcc_darwin_amd64.tar.gz"
      sha256 "830ca472e3462c6b10a5dd8a0551da93800c6cc4e16597665cf8127ac6e54ce7"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.9/orkcc_linux_arm64.tar.gz"
      sha256 "31ab96d71a733a3bdb4f3b5c3b5a279a90b3b1a70621bf4a1bfe2d52f3fa5fd9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.9/orkcc_linux_amd64.tar.gz"
      sha256 "938908813fdccb401c378826bf8762b86432a990c747af019f57c9cffe72cbd7"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
