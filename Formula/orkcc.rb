class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.1.9"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.1.9/orkcc_darwin_arm64.tar.gz"
      sha256 "b6b4c9fe926a1196f2a4fe2c033c1142ea4537e9ca2ba9d558c8bbf0d2e82438"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.1.9/orkcc_darwin_amd64.tar.gz"
      sha256 "2c6ebfaa1cd248b0393759782f96eba5cbfcb3137c8af2d9ecf6ddb1dd558289"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.1.9/orkcc_linux_arm64.tar.gz"
      sha256 "f80804eba164ff1ad99fd465bef4dea23da591fb5a77865e5aace94225a3d296"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.1.9/orkcc_linux_amd64.tar.gz"
      sha256 "fcc80ac09c92e43f4d9e5859820ef54aa8dd67434d0a64103a176078f18058a9"
    end
  end

  def install
    bin.install "orkcc"
  end

  test do
    system "#{bin}/orkcc", "--help"
  end
end
