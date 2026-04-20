class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.1"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_darwin_arm64.tar.gz"
      sha256 "8dd1b02e849f3836c46ca5f8ac2d96f7841f5e4e59f9ce86cbcad9beaf4f20a8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_darwin_amd64.tar.gz"
      sha256 "0eb4fb1778241c77626d22c57947b74be64705c29dd0e807a19365f420944eaa"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_linux_arm64.tar.gz"
      sha256 "9d72363c8c8b884bf29b9c7bb7eb01012602b8b7c44df7cb85544a9d3875db01"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_linux_amd64.tar.gz"
      sha256 "0fb83e8f89b77089af53a76c5a44d35654c9efa0cbced967dda33554739bfd7f"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
