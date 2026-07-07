class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.10"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/orkcc_darwin_arm64.tar.gz"
      sha256 "4efc4ff749d5e8a53506108e2392d2dcce863c5b8ee419d4d087f87d64873cfb"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/orkcc_darwin_amd64.tar.gz"
      sha256 "593e7edf578709c7008c83db3c54e57de9ce973fd7a0a526c78a6ee044652bae"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/orkcc_linux_arm64.tar.gz"
      sha256 "b6275783ec85d8452e9f70dd5b8c2a59bf00352f88e08841196d83d5d167dc91"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.10/orkcc_linux_amd64.tar.gz"
      sha256 "8b4c42e7570c4fb513e2971f263a559e827762d48d9ee28a5ed929608b5a995c"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
