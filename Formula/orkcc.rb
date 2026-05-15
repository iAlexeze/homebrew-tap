class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_darwin_arm64.tar.gz"
      sha256 "20d2c72ac0c402e3d0363c38a99e8ce4a6aeb23a5e4660e03cc286a5c455857d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_darwin_amd64.tar.gz"
      sha256 "a777eb20390339b9d21e79a900e231e22312dc206b7f8a09fe59e1e513b7991e"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_linux_arm64.tar.gz"
      sha256 "e997be3af06b00782e11f304c710a60c9682412ed94e3838c8f036a463ce8587"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_linux_amd64.tar.gz"
      sha256 "a708e7fdf554e5e84feec316e1ca2fd430b077d55e769f9b1363b87c12d79602"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
