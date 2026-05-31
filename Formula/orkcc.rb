class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.4/orkcc_darwin_arm64.tar.gz"
      sha256 "5531c0f73d9e10df157dbc3c05b1a9a72097e19c20e61c987f64619ad2d662d8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.4/orkcc_darwin_amd64.tar.gz"
      sha256 "1e18468153dff5d37ea468bd3872fb0b3b3cc90a2c43f90c27b6b4a1e4412fd6"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.4/orkcc_linux_arm64.tar.gz"
      sha256 "ffe35e89f0c1bd6f9e38817468237508cacf3a868112eaa29b0f63518e37ac46"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.4/orkcc_linux_amd64.tar.gz"
      sha256 "697274d93a4420754367b7036669a26757041ae6da4a96c03bf24209281fcec3"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
