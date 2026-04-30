class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/ork_darwin_arm64.tar.gz"
      sha256 "06f0e6bb3b40bd25e2b2911fd3e08298b88e67f173aaecf27d72fd7eac94cda3"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/ork_darwin_amd64.tar.gz"
      sha256 "445900d66a398744d9d166e549cc694e6e72e0df2cd235ac0cc3948e936fe258"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/ork_linux_arm64.tar.gz"
      sha256 "fe5021f2d739b842cdd5b8c568c9026c6509a9e50c7341a23ab4fa1d5a69638a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.4/ork_linux_amd64.tar.gz"
      sha256 "471a8df1d04bce098cf6f06998fe7cf2c93124823a224f039f793fbe96c47c33"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
