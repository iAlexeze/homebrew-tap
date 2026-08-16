class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.15"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.15/orkcc_darwin_arm64.tar.gz"
      sha256 "8604bad0ce5fd19b6c7c9932b991e5c4e7ffdd1d51e639fb6d7f3a8bb3aedd24"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.15/orkcc_darwin_amd64.tar.gz"
      sha256 "b5d486aa2106e14d9a4b9388b41c4781667c40acf5ddd8fcfc9adbc631459cfa"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.15/orkcc_linux_arm64.tar.gz"
      sha256 "aa8f9c53f22614456f62c8cfaefa82a84bd8943796b3df3776e192e371740851"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.15/orkcc_linux_amd64.tar.gz"
      sha256 "3955a89d9d6024eea4d131ca5e4ddba382a1b1066f4eeb73a542d693319bd702"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
