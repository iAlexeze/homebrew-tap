class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.13"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.13/orkcc_darwin_arm64.tar.gz"
      sha256 "df37cc15858e5da030131b3d1596006d9b42257db65b699fa71a80aaca4e282c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.13/orkcc_darwin_amd64.tar.gz"
      sha256 "b94fe28a328e3c7b1818fefe6947adf87429d47543b44a645a6c3462186d970b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.13/orkcc_linux_arm64.tar.gz"
      sha256 "52f503ba8f7b0132d8ca13741bf1701238e6005cb0fb37d8ae49a5a7893bd703"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.13/orkcc_linux_amd64.tar.gz"
      sha256 "926c7cfa894714b130000bef06094b165c5c25e7acb4b88e756050408e594767"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
