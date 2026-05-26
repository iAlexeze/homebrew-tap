class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0alpha1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0alpha1/orkcc_darwin_arm64.tar.gz"
      sha256 "3f4e61a91b21202ae147f7924b79d7fdb3db5911f942bf1a7617921797f3de7b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0alpha1/orkcc_darwin_amd64.tar.gz"
      sha256 "ff0654ba7848c334f8b5c948d86b5a227520a4db653fa9b6192df7de1c5e7b65"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0alpha1/orkcc_linux_arm64.tar.gz"
      sha256 "89785168cd952de13ea7b640d97d14faa6f35068a4714e54322f267f06cc9d45"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0alpha1/orkcc_linux_amd64.tar.gz"
      sha256 "d1fd78bfac3253e54bd67f7f4d5f8277ba0f1a4ea001070d28b5dcbe9726a835"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
