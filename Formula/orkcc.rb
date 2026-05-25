class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.4/orkcc_darwin_arm64.tar.gz"
      sha256 "10914c5ccaa40eeb5e8fa9ae421160c8410d67173ce7b3f72021f04bd11ff496"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.4/orkcc_darwin_amd64.tar.gz"
      sha256 "36900d5c7f97f7a849a1b710f60e2e6769b0c410b51cebd4aad00775895e3b72"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.4/orkcc_linux_arm64.tar.gz"
      sha256 "d97a57bb25ed764010710d0ce611c66dc29968fa7425b1e2e9487591a9a369d1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.4/orkcc_linux_amd64.tar.gz"
      sha256 "43c1b064d01f116ddcf8e97dd673a51093b59e93165c10da61e7a296faab0434"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
