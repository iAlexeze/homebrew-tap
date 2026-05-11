class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.2/ork_darwin_arm64.tar.gz"
      sha256 "d41220581d7c50d9de1d085a1d79529781b4535f11523c4e43783771400385e2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.2/ork_darwin_amd64.tar.gz"
      sha256 "48145b9c08509663882c1d4ad175f0050cf4d1c403292cf53af4a4bce9be0f5c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.2/ork_linux_arm64.tar.gz"
      sha256 "c1aa772730b7edbf326046cde96520e0e6ce5cebc0f953022d9bb6f3c214943b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.2/ork_linux_amd64.tar.gz"
      sha256 "95ddffb1e06372ff97878272484bb57ec6033f20a5ebe5a2a385717781db9c4b"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
