class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.0/orkcc_darwin_arm64.tar.gz"
      sha256 "f3d392375ede993b7c8b24960df99c210e6fae97af6c24e969c591aa05d4034e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.0/orkcc_darwin_amd64.tar.gz"
      sha256 "b6c8eed84bcce6ceeaa22359367642349178e9c0cd1fec5b42aef56ff14f4a72"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.0/orkcc_linux_arm64.tar.gz"
      sha256 "26538e991c6365a5ce7c49b035dc42dff112e512fd8db03a5b904283f984c674"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.0/orkcc_linux_amd64.tar.gz"
      sha256 "adc00748c343028d7f12190ae5d2ed23eab749177756d8914fcf271c7703e8ac"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
