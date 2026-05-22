class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_darwin_arm64.tar.gz"
      sha256 "ef12ac2cd4552b2551d491c789cac3465adf88624cb72013f9ee0261d7a46fa7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_darwin_amd64.tar.gz"
      sha256 "b07f6bfacccea6985d5f6f24934055612079e56ffd24065e469042153d5e0624"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_linux_arm64.tar.gz"
      sha256 "337b69cef34e699bd9ce3b7c7fa6743d16f9ff78abe1a8d69183dd6c630d276f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_linux_amd64.tar.gz"
      sha256 "bd54b3aeff6e45ce4e1b2eeb3f4966175bf6214bac820b85609167e11865ef4f"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
