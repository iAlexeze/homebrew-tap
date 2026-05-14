class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.6/orkcc_darwin_arm64.tar.gz"
      sha256 "c5c182348ca56599c257895aca69b730efe9ed2f40f313b1302f392829b18af2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.6/orkcc_darwin_amd64.tar.gz"
      sha256 "6f2e0b9238188824b382b608624c59da94434bc1d7a5b1c73c33eff730600fa6"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.6/orkcc_linux_arm64.tar.gz"
      sha256 "41825dddc6cc8ca59d9f596af139d1a6ad2f9baf35f1040ff61ebe1a7e4d2f8d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.6/orkcc_linux_amd64.tar.gz"
      sha256 "ab79d2a01f0449d649bc8888d39df993df8b114030606661f55249652532c422"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
