class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.2"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.2/orkcc_darwin_arm64.tar.gz"
      sha256 "3e80b5471a755a77a3de53b85d0a147394f4c0127832dba0127bf8094666ec98"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.2/orkcc_darwin_amd64.tar.gz"
      sha256 "f846b68eda503a557c9820c49e2a0e3cdbd093bcbef14437b89a043c2bb51a9b"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.2/orkcc_linux_arm64.tar.gz"
      sha256 "e22184f5fe432cada3f99bcae6715ed962f28ad00e5b45d09d6ddb09c4d72a80"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.2/orkcc_linux_amd64.tar.gz"
      sha256 "921acb038a95400543a185e4e0928282acc556f670cc81a8922f47a9bad1cabf"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
