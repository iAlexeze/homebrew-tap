class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.11"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.11/orkcc_darwin_arm64.tar.gz"
      sha256 "58192b9587b3a2a8b62211cf7901808cffaf36d4c549462429a67b54547852e1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.11/orkcc_darwin_amd64.tar.gz"
      sha256 "dff279423f436c574f725eccd272338323d873801dd0563ef028cae08abb7d30"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.11/orkcc_linux_arm64.tar.gz"
      sha256 "5b4869105f936c402669e114dc0069dc9cad22d38998d1ba1599ef8d7fb0749b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.11/orkcc_linux_amd64.tar.gz"
      sha256 "5b1aaf53fffce3c33a3c922a8f4e0d985b542ec0c2d984c52f071558d2ba14d2"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
