class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.1/orkcc_darwin_arm64.tar.gz"
      sha256 "bb6efedeed8d3d062aa9dac1daeed5cb178b2622d14e0578b8e4ee7846d44104"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.1/orkcc_darwin_amd64.tar.gz"
      sha256 "e5493d79f22cc65563f68cebc2061172a5736b6ede65ee792687eb0b7040e714"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.1/orkcc_linux_arm64.tar.gz"
      sha256 "c8bb41228b2cbcad114cf09fade63b7cb9a3b016be0aee64c677231a8ad59881"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.1/orkcc_linux_amd64.tar.gz"
      sha256 "95930e55b3320556bca141191141a608b3b675be1bf6323c9e67473b7620f284"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
