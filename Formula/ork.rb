class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.2"
  license "Apache 2.0"
  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.2/ork_darwin_arm64.tar.gz"
      sha256 "13e0c35cb10321604952507d2e466092f4548075967eb8e85ac746272113b737"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.2/ork_darwin_amd64.tar.gz"
      sha256 "3872e21582f941e007afb7058d8269e3665939807747d99f20230e238e6f7e5f"
    end
  end
  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.2/ork_linux_arm64.tar.gz"
      sha256 "f9eac482d588f7d36c85c9cb7e73a1693cb7f04b73642ea1da60b31c85fc934a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.2/ork_linux_amd64.tar.gz"
      sha256 "fd14486183eec4479289c71efd52cdc803108851e119b514892c53cb4df7e4ca"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
