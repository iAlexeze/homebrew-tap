class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.1/orkcc_darwin_arm64.tar.gz"
      sha256 "e89141603870ce9870164a627a82991c3293b531d1a772fdd89da43566974d0e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.1/orkcc_darwin_amd64.tar.gz"
      sha256 "2f6a2183320133ec65609cf75b3b086e1a77e7c2477035bebdd601fb1c10b45f"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.1/orkcc_linux_arm64.tar.gz"
      sha256 "32e605f364ef5f25f4e6fd97f2bc48cf4a1639f018a3430b09fa8dc8da90e04f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.1/orkcc_linux_amd64.tar.gz"
      sha256 "1a6d207d7fcef568e00eb0d61d086ebd2e6c0380e69a83b9b3de3ab8ace5f740"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
