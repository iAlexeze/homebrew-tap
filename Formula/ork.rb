class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.2/ork_darwin_arm64.tar.gz"
      sha256 "a3ee52f88ba8aa4f6a84aa5f7ce5b2f047220af6d7f5c6dc44d0de6283730f93"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.2/ork_darwin_amd64.tar.gz"
      sha256 "877bd05451512287c5b82c1ec7a8104da74f436230f8b43c44c20b864e8b6e37"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.2/ork_linux_arm64.tar.gz"
      sha256 "b47da28dbc21b9bec4a5783f573e2d72d54e7ee06428b6f471ea79f4b0e52fb4"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.2/ork_linux_amd64.tar.gz"
      sha256 "b3c225971676568f854fde934f58fe5f367b8a792c59a486e0921d7f619f9238"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
