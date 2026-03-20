class Ork < Formula
  desc "The Kubernetes operator framework that needs no Go"
  homepage "https://github.com/iAlexeze/orkestra"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iAlexeze/orkestra/releases/download/v0.1.1/ork_darwin_arm64.tar.gz"
      sha256 "b488e1d195144d6d8bbe25edd46327592369140967e4d955ed1ed07b85a6dd42"
    end
    on_intel do
      url "https://github.com/iAlexeze/orkestra/releases/download/v0.1.1/ork_darwin_amd64.tar.gz"
      sha256 "f8a011675455bb257ef0a8984f071d365dd7463b93be5adf12cb5d2ccee99f72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iAlexeze/orkestra/releases/download/v0.1.1/ork_linux_arm64.tar.gz"
      sha256 "62a5e38a3d9bdd7446cde7d6cec9e92dea12ca33a585822a302cc2f049904088"
    end
    on_intel do
      url "https://github.com/iAlexeze/orkestra/releases/download/v0.1.1/ork_linux_amd64.tar.gz"
      sha256 "d9d4d5d1e20cf60ff4fbf582eb1603983b55969b6c2b0aecd5ec69d62b45058a"
    end
  end

  def install
    bin.install "ork"
  end

  test do
    system "#{bin}/ork", "version"
  end
end
