class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/ork_darwin_arm64.tar.gz"
      sha256 "4dcc91467cac3f16518645cb97b5731609d5c3f9c7b071a6b133dd5656512e3e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/ork_darwin_amd64.tar.gz"
      sha256 "6705bcc16eff826d1824d4ffecedf049648c14a5760d4d22fabe8713e60ec368"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/ork_linux_arm64.tar.gz"
      sha256 "40b6919f37cdb939d12928f49869d56acf7219884e24ca4cafe51b1c81d9540c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/ork_linux_amd64.tar.gz"
      sha256 "30c70fdc13e99b8cbb651df10737811c3b2487ae452cba842d88eecb56b369d8"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
