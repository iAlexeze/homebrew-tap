class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.6/ork_darwin_arm64.tar.gz"
      sha256 "73688bdd29e9617beef48a35ab58df965bdff89fe003af97fe71960cb93fea39"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.6/ork_darwin_amd64.tar.gz"
      sha256 "48d4079b46426b1087b8e0b6c68e4ce618dff680141f8a1e9565e7fe3e387b7a"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.6/ork_linux_arm64.tar.gz"
      sha256 "3fdd55289a67102f24e35b886eb6f186642a128241d48592a9d04b89482aafaf"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.6/ork_linux_amd64.tar.gz"
      sha256 "c936609bc53bc9714667f92bf942a4bf65a2e6e49a96c5f6469edcfb563383e6"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
