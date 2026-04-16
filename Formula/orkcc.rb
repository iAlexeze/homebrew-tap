class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/ialexeze/orkestra"
  version "0.1.6"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.6/orkcc_darwin_arm64.tar.gz"
      sha256 "f1c1ea72aca069ed605bb3928951af48df9b6e3efc0bb05bb416235eeb429f7d"
    end
    on_intel do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.6/orkcc_darwin_amd64.tar.gz"
      sha256 "a54f0a9d5c106d271c43648557046f391e58eef8a19d4ccd22fc69abb447744d"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.6/orkcc_linux_arm64.tar.gz"
      sha256 "5a686d5fe6cb8754268f5ddedcdfe0f15800ba70a5f1f7c9275277cddc4839a3"
    end
    on_intel do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.6/orkcc_linux_amd64.tar.gz"
      sha256 "726ae25b7a6ea24e48cb6f9501233acbe2c65457f6eb6400a1972d1930a9ec3e"
    end
  end

  def install
    bin.install "orkcc"
  end

  test do
    system "#{bin}/orkcc", "--help"
  end
end
