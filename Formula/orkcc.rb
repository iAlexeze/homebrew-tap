class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_darwin_arm64.tar.gz"
      sha256 "5ab04a81fb3b3b1590c6d5b0ba57c700f5a9b498d91fba3191f26b4767c0dda6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_darwin_amd64.tar.gz"
      sha256 "ea1aab649c427f6fb48e7fb1520ebbc736a8a65e012c9ad20d0635926193e3e5"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_linux_arm64.tar.gz"
      sha256 "dc79a58d10ffccfa658fecdab50bcab02a96f4b4657a8bffe9614e6187c448a6"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.0/orkcc_linux_amd64.tar.gz"
      sha256 "a1dfc0d14dfb7a01a66d0dbed6bed588e4b55a6015d101c0982e06f6545fb6a1"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
