class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_darwin_arm64.tar.gz"
      sha256 "d686f6e8e552dc73c8503ea305592a44bb2ac58f7077dbc2f1fb6cb7c79fd068"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_darwin_amd64.tar.gz"
      sha256 "30ee932f1421cc07f9ee31d065e0c2254689101b0541047acbb862b66d75182b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_linux_arm64.tar.gz"
      sha256 "486442840afaaad016e18fc4dfe0776b188f328492efaaa44fcdfdc82cd6ea86"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/orkcc_linux_amd64.tar.gz"
      sha256 "f20a46e989ece46a13fc805213042fdeca6cb78a8626c24b06df8ae8c98f4c62"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
