class Ork < Formula
  desc "The Kubernetes operator runtime that needs no programming language"
  homepage "https://github.com/ialexeze/orkestra"
  version "0.1.5"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.5/ork_darwin_arm64.tar.gz"
      sha256 "833b637c5b9de07560f4508dc4923c81db90a5f9773dd5272e34a3d13c7d4a6b"
    end
    on_intel do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.5/ork_darwin_amd64.tar.gz"
      sha256 "8954c579cdd85b58faa5a917e7040b50bd559227bf5f481ea74cf5fd5981d00e"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.5/ork_linux_arm64.tar.gz"
      sha256 "da33e34c7715bcc60b02095e9be489f3a5b9e4b494fe203ffbe6dd225478315d"
    end
    on_intel do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.5/ork_linux_amd64.tar.gz"
      sha256 "29680b09b58a5a5715a909e4126a71a3e1555032b55ff18d1f81107c46037c6f"
    end
  end

  def install
    bin.install "ork"
  end

  test do
    system "#{bin}/ork", "version"
  end
end
