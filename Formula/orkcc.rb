class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.3/orkcc_darwin_arm64.tar.gz"
      sha256 "6176adfa21939d89cfad12ce470386acc5080cb73cbcc279a10943741f4b0b32"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.3/orkcc_darwin_amd64.tar.gz"
      sha256 "c425174a52e9ee8c57185e965bf673b2b8293f4ee066cdf13371272a4783592d"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.3/orkcc_linux_arm64.tar.gz"
      sha256 "636e05173180ff7731b5a86c5dc76f6e217635167e4ac6a17e49fd578ceb97e0"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.3/orkcc_linux_amd64.tar.gz"
      sha256 "5e6e74f689df80e22091eb475f0100b5361634543b5e72541416610f30f94633"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
