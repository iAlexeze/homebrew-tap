class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.6/orkcc_darwin_arm64.tar.gz"
      sha256 "f79d0b6dc7d25a0df3d8e50cd68f26541ee208afc0eb0f8288154d8e49392aa7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.6/orkcc_darwin_amd64.tar.gz"
      sha256 "d99902a4b1e86df16736258616784251ac6c1ebf8a12776d99b1d67bc71ffa9f"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.6/orkcc_linux_arm64.tar.gz"
      sha256 "459de168185beb1d23eeada7460484ded6f999615431cd5d795ded9d5c38f71a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.6/orkcc_linux_amd64.tar.gz"
      sha256 "c7b534f1c489e07eac3c2c867f588df203f743210c9cbfaa5c1d9c7b4169ea38"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
