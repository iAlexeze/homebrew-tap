class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.1"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_darwin_arm64.tar.gz"
      sha256 "1ddfe38b6358b36da022144c3db40c41c7f6bb77f03b05a315ea390640ad5c17"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_darwin_amd64.tar.gz"
      sha256 "a217dc3702fba410fb6a75632b81e1ef923c5b224c7649178d4522d20e87afff"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_linux_arm64.tar.gz"
      sha256 "52b60a61343587b96622504bc5d37667660155eefd6616d75c16642d7808a175"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.1/ork_linux_amd64.tar.gz"
      sha256 "2935e0519a1a92f5db46b040624eea151231d67e4206f6b6e939dcdbd532e4c5"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
