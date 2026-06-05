class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.2/orkcc_darwin_arm64.tar.gz"
      sha256 "164ef838d534e27f692944a1b2a6a9235e87b258d4f1545b493354f140eb3434"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.2/orkcc_darwin_amd64.tar.gz"
      sha256 "3337eb05aacf3f1b5f524ce0de559d14857fa83eebde846b18a77d57ffa3b0b7"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.2/orkcc_linux_arm64.tar.gz"
      sha256 "496b3b6971cd44d29d091a1574363105c187af868169e8a359edb8b837b7633c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.2/orkcc_linux_amd64.tar.gz"
      sha256 "f471dc20bd6e38dce45b12302bcbf0416ebd6d97c7cf4f863612d521e76bd8cd"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
