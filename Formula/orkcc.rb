class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/orkcc_darwin_arm64.tar.gz"
      sha256 "cae2a06dfe8aa6512c7010cfb289b5549df4bf34b9f0739171c2156f0007d4c9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/orkcc_darwin_amd64.tar.gz"
      sha256 "68ebc972b83076c36f5ebd88f713f9c3263ae45f0d2f042e9df01d5c45e7ae0a"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/orkcc_linux_arm64.tar.gz"
      sha256 "988d346e09655a9eaac75c94e0a8bdcf9f3d0f8b8bc9b1397a1b66c01403ca98"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/orkcc_linux_amd64.tar.gz"
      sha256 "2203e77d04b6f37f8753eed9c2a9bf3d3619e0533fb48b08f66b577f076c6294"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
