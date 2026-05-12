class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.3/orkcc_darwin_arm64.tar.gz"
      sha256 "67ceb31ebb8e5df50cd5bc4d5f0bac3918ef36cd55e57fc6c681c659074e1117"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.3/orkcc_darwin_amd64.tar.gz"
      sha256 "9d683eaf551cc348420b49d61d9dc4bb717454b1d44d78a575247a1a8c05f044"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.3/orkcc_linux_arm64.tar.gz"
      sha256 "88ed4beb1d0c188a47e70e5dffc4e9b9880fa405da9f3ca6582e1a9a2b6e7331"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.3/orkcc_linux_amd64.tar.gz"
      sha256 "40ecf3f8aadeed97dacf95091a67c9cd0b0bd8f65da7e7c6b5283ccf8345bec8"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
