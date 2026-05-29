class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_arm64.tar.gz"
      sha256 "b67cddc07528e35f064fe7ab8492ac4b14905148adf5d33fa10164818951b51e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_amd64.tar.gz"
      sha256 "c1d67f763bd58ceaeb37bcef1f8830a115594b4cd8ec4e8bd8bf4f2fe0a3a241"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_arm64.tar.gz"
      sha256 "e4b5892058679a21e0f4cdc9eaac6a1e91ce0a130f7d023c406f0551ff72f955"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_amd64.tar.gz"
      sha256 "c237cae57360d348a53cc864623f4b813f10b767848b2698e24649a39b63e7a7"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
