class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.12"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.12/orkcc_darwin_arm64.tar.gz"
      sha256 "dffe846089052edf1f1802310ada5e09a46753bf5fb289240aa09b3c23ac4bab"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.12/orkcc_darwin_amd64.tar.gz"
      sha256 "0575ca23ad00fb6067ff66c5f7e77b4e732f0c7a1b356c2b9046e2cbd36f8431"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.12/orkcc_linux_arm64.tar.gz"
      sha256 "b8e9d2360d2bfd88ff6b4d1210759435aec7589a7bc4bc766645cbff6c1c945b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.12/orkcc_linux_amd64.tar.gz"
      sha256 "61520799aa9e270bd33865b5d75efe586fb5e695537ba8466e769f70866a139b"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
