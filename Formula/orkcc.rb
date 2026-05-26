class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_arm64.tar.gz"
      sha256 "c1de59943b57c915db4f3c07787edd894e177c28fffbfe5215980d5cb7fd0b63"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_amd64.tar.gz"
      sha256 "87930d73d06737508cb8efdff9c0e47bde015c6e37fa173cbfca2c9215feb34f"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_arm64.tar.gz"
      sha256 "748998870025a862625be1de15ba7648fb4c4fc0fc2a4bc1e7b1b4d247f68c42"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_amd64.tar.gz"
      sha256 "23cc8a37a661ad63701a5e9f64290dd35eddc830e9f751f3e0d554fc0d404f08"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
