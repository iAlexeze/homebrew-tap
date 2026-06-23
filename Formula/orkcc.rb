class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.7/orkcc_darwin_arm64.tar.gz"
      sha256 "d9dd4ad865bc4df2094aab52125242eaabd680e31f2ae80de2179e38187f7cc4"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.7/orkcc_darwin_amd64.tar.gz"
      sha256 "aadc7e31e1e264aa63a9285a7ea104a8e3aa3366f5c920535625180bf7f77c57"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.7/orkcc_linux_arm64.tar.gz"
      sha256 "f811515c4b24a0665cbd0b824f1990d48bfb387bc0cdbcb8add5538f43e61d86"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.7/orkcc_linux_amd64.tar.gz"
      sha256 "eb2dc43fd070dc372c5fa3ab2a27ea916c796b15545fae824e80e5788734f305"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
