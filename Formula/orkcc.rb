class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/orkcc_darwin_arm64.tar.gz"
      sha256 "4838000617ede02e45e70ceaa77422ccb458103feb72680c223068a97a461f23"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/orkcc_darwin_amd64.tar.gz"
      sha256 "372286ecd54d640af546202272bf8a3e6f76af38cdcd5df3ab9a4bccecbb052b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/orkcc_linux_arm64.tar.gz"
      sha256 "dd24b1dc0c643b80f4cc7dde0c458768bbf0a8fc7ee2d0c261c5131557df1999"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/orkcc_linux_amd64.tar.gz"
      sha256 "0a0f54700d2fb7242cfdd4615031ee2702d1942046c4d501d35297398cd33b55"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
