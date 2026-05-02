class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/orkcc_darwin_arm64.tar.gz"
      sha256 "8b0c813e35a78ac36313e48428c4597b82711fe6ad1a6507f3e9a2d10f66ac22"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/orkcc_darwin_amd64.tar.gz"
      sha256 "0339174db8cb2dd19c7bec9b3c0d18603e1889dbb2f8e84f5e5b8e5362cbc98e"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/orkcc_linux_arm64.tar.gz"
      sha256 "15ee6c08382ed81384ac2a95cb7bf098be0f64670a7803e80e4951b44b053460"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/orkcc_linux_amd64.tar.gz"
      sha256 "13d2f52b0d7ebfb986de0e47c1df3e7012cf247316cca1e1e1c43f7b3406ca42"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
