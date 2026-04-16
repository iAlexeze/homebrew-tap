class Ork < Formula
  desc "The Kubernetes operator runtime that needs no programming language"
  homepage "https://github.com/iAlexeze/orkestra"
  version "0.1.4"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.4/ork_darwin_arm64.tar.gz"
      sha256 "b3a00bdc62c2a9a29ec1c0ac1f36cf972cc68868a218c831a08d5682828a6749"
    end
    on_intel do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.4/ork_darwin_amd64.tar.gz"
      sha256 "e73321d0295fb4036fd313075afd1014596bb9845628d065d451f49a94341ac3"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.4/ork_linux_arm64.tar.gz"
      sha256 "8b61546c62c553d1516bf7b6818cf7a606855461a0ca411f7f9ccbc9c01c8bbe"
    end
    on_intel do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.4/ork_linux_amd64.tar.gz"
      sha256 "b30bef5f95a2db64669d65d80b616cffb8cc5df86ac03799d10fb7571ccae618"
    end
  end

  def install
    bin.install "ork"
  end

  test do
    system "#{bin}/ork", "version"
  end
end
