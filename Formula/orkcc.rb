class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.1"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_darwin_arm64.tar.gz"
      sha256 "3c5738d8fd5489030b223016e1694153a245ece58083788850a9fcb21617d7a1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_darwin_amd64.tar.gz"
      sha256 "28b5179d55b4f6ddeaf5293a70c770a3df1dbe517d954fe5094e554ffbe69503"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_linux_arm64.tar.gz"
      sha256 "d2a01db237dd12c053834a077783870f8e35befa3c8ff570b4eb975495d12342"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/orkcc_linux_amd64.tar.gz"
      sha256 "cc15711645cf22a275c121abebcebdc92d42738615132aeee88052d3db7bc2ea"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
