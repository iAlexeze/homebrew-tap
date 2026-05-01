class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.5"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.5/orkcc_darwin_arm64.tar.gz"
      sha256 "3d34ec1a57803956634dd0e7458102a28bc995f7c52f7a37ebc34b1f78138a23"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.5/orkcc_darwin_amd64.tar.gz"
      sha256 "cc6b3a172f084c16b720550258b64f236ad064bf1428ac654250daf2fa8f12b5"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.5/orkcc_linux_arm64.tar.gz"
      sha256 "31cdcaa4a60b2cd20f349ea094e82a5e8a713595204e36bc1cf1a5064b8e4d0f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.5/orkcc_linux_amd64.tar.gz"
      sha256 "33c52d0e98b273509b38e3a13e5195503965885a57f1c64e679c765f934f0050"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
