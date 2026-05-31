class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/orkcc_darwin_arm64.tar.gz"
      sha256 "81e83acad7a8e5cca4d72089d79df38c484af671a4f4e55888dd8eed57e9de63"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/orkcc_darwin_amd64.tar.gz"
      sha256 "b5f0a51f0ed556f38f9aca54ccde0042ba9f61900ec97ecac4a6db4706a28dc6"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/orkcc_linux_arm64.tar.gz"
      sha256 "95b9ee8da1e93e68e770c132041e286e25ba34dea8ccbe977c6386a387952fef"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/orkcc_linux_amd64.tar.gz"
      sha256 "3a465407076aea497fd5e2e381a93e813bae13a2c7ab1cf0defa4380284198c9"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
