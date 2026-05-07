class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/orkcc_darwin_arm64.tar.gz"
      sha256 "9b3ff2b73959fddf17413c829e61b7f2de70f41bfca53cbdd7b24a8bf1a5e5bf"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/orkcc_darwin_amd64.tar.gz"
      sha256 "df7623c74f493a84e30d7260610abc9dbac39ac53497fd1f7632288608cbb4f4"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/orkcc_linux_arm64.tar.gz"
      sha256 "edfdf8ebccbfb7bd1e0ec7018b9fd7a8b928b4294ff307cb6f1f284e7d86bc42"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/orkcc_linux_amd64.tar.gz"
      sha256 "c65ae8f775d9d0607e9226d995018b43ec133d3bad75505f73d400a12775c16c"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
