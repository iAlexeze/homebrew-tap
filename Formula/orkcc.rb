class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/orkcc_darwin_arm64.tar.gz"
      sha256 "601722d1798fe41a50daf32e43b9bfbb69b90ede9cafbaaee2e66229f6c6609d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/orkcc_darwin_amd64.tar.gz"
      sha256 "9d2be3c5b44d1442528eac1f5dfb99b907902ac54746456d70ce604a1c59505c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/orkcc_linux_arm64.tar.gz"
      sha256 "370af305c9c9e2f1fa85c2ae41d027589ebbb7e7fbc1dacec571810e4617ffde"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/orkcc_linux_amd64.tar.gz"
      sha256 "d051badbd9db56ad343d83cfbe47b8922adf4013acf5b0773630c2012e8acda4"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
