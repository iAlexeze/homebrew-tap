class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.5"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.5/ork_darwin_arm64.tar.gz"
      sha256 "1257b494b0d81f3044cf52dc52520b91b936bf7a714ff9e52ecb16447951a041"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.5/ork_darwin_amd64.tar.gz"
      sha256 "60c4136bc366274284ef9077e6a09800b7ddd816a9df84267b73a7fadd68cf70"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.5/ork_linux_arm64.tar.gz"
      sha256 "958aa224d5ae79afe45270abc0458ff64fe3329bab644e8548a3d9d48037b21d"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.5/ork_linux_amd64.tar.gz"
      sha256 "861bd77abb2207516649c36fec16d64c0969a98eea8e2fd1dfcaf6b6b25dd3ad"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
