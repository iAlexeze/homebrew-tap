class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.1"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_darwin_arm64.tar.gz"
      sha256 "b7ac115095a5757e86a7b862108dacf5f79827431d4bad0a9d549c0d5247846f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_darwin_amd64.tar.gz"
      sha256 "60073e5b37ba17d3a79866399f2c4f1350beb692d9413309dc65efc9111c54c6"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_linux_arm64.tar.gz"
      sha256 "a36370c2b8256e92635d1cf455f2033b5b6c3442e481864af3c99f2db8fabfa8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_linux_amd64.tar.gz"
      sha256 "0681a8e1ecc657407b1239989633840e6cc1569824327191ecb3f49535020fe9"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
