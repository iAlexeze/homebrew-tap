class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/ork_darwin_arm64.tar.gz"
      sha256 "27a7286676fc97d0b95d4ab892ffb37d41a2fc2c96fbeeba50da940456da79b6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/ork_darwin_amd64.tar.gz"
      sha256 "48131e71e48ed7892b13a8a29a556a22c256008af732255276603bbc3449eeba"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/ork_linux_arm64.tar.gz"
      sha256 "5f95f57e5c839ae6456ba6e68c5e8a05d67b144305de124ee873c8bb8e72f3d8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/ork_linux_amd64.tar.gz"
      sha256 "87072936ea8e847363dae7bf299847336aac165d96de91484e41fd31f3e48f0c"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
