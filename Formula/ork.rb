class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.0"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.0/ork_darwin_arm64.tar.gz"
      sha256 "14453c2e94fcf002f6c9f55606b4ca9a416b617ec632e4cb943b20bcfeb40539"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.0/ork_darwin_amd64.tar.gz"
      sha256 "6b2e5d7d0de0fd9516f15a38ea224bbc7689a7445ef2a58b3eb0d3388aea7094"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.0/ork_linux_arm64.tar.gz"
      sha256 "dfed8dd88a9e07f01327a5b84a40a74a7760d8aadff9da3d4d5db5505ccf2af7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.0/ork_linux_amd64.tar.gz"
      sha256 "6ad34e04a9aa42838c72f2a4a225fb7b476b1428ad9891bc6ad412ce53b4d799"
    end
  end

  def install
    bin.install "ork"
  end

  test do
    system "#{bin}/ork", "version"
  end
end
