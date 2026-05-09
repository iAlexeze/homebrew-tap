class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.1/orkcc_darwin_arm64.tar.gz"
      sha256 "a8300ebb4e51200f884941ec729ca5af31aaa0ae4208fa602a79d4806688b6bf"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.1/orkcc_darwin_amd64.tar.gz"
      sha256 "94f5736bf03ba3d2abbb19bead94bf2528b390e47320e91ed0de991e7f4cd32b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.1/orkcc_linux_arm64.tar.gz"
      sha256 "4d68a66dd14cc05e37b41ee08438794f3c5c00ed458a0a7ca0baced3b231efc7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.1/orkcc_linux_amd64.tar.gz"
      sha256 "8022a75158e84f2eb70e8b2ff2071a93a596cf12f1dac8eadb567d23fe86f004"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
