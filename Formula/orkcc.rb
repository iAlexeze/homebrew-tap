class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.9/orkcc_darwin_arm64.tar.gz"
      sha256 "7472af87f7ee3fcf594cab458805dc949b6bfb1f4316d92a1bcfe83ef21e5b3f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.9/orkcc_darwin_amd64.tar.gz"
      sha256 "fb800979aefdcaeb011929cdfbb1910935477c8ac7ef9f63bce1d04f8c9bab09"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.9/orkcc_linux_arm64.tar.gz"
      sha256 "3e133e09053ec3b9e624988be37a00043e7c8954278b3b9082499dd07e59d7fd"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.9/orkcc_linux_amd64.tar.gz"
      sha256 "25440fab08d70822d20969ddd610cc35e44f5c42dd78414bc9bca65559e904de"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
