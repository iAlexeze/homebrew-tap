class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.3/orkcc_darwin_arm64.tar.gz"
      sha256 "fcfab79377883410b172480afe9385958c76d587225986a1520d8f905e748dff"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.3/orkcc_darwin_amd64.tar.gz"
      sha256 "ecb35140c79bd1fb1ac693b1e24946eb1cfc31bfcd4dc47f4cde5018f92b6c9a"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.3/orkcc_linux_arm64.tar.gz"
      sha256 "3e34dd94c708febe115c09a05218d7c8bbe86c829cdff95d25993f61cdde6c06"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.3/orkcc_linux_amd64.tar.gz"
      sha256 "0933a509ddcd4491e12852fc0e99a822ddce6b8943567ac855cbe56487334b04"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
