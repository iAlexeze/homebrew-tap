class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/orkcc_darwin_arm64.tar.gz"
      sha256 "c79c9fce15342b14c123fa91e33fda300133d7d0b65c43611f578d81b095e275"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/orkcc_darwin_amd64.tar.gz"
      sha256 "956549b157c7c423e2271a6da1c2f15f1f2292e01e8b9a36c92842d3f45fcdc8"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/orkcc_linux_arm64.tar.gz"
      sha256 "c5e9499d733613b302189a1276e00cf4bb96ccde14632c9324d1a2167c9eaafb"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/orkcc_linux_amd64.tar.gz"
      sha256 "12643d3ab1920ff5293eb9af99732f75547a75531f7b70137f84e6fdb2c617fd"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
