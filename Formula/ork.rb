class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.4"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.4/ork_darwin_arm64.tar.gz"
      sha256 "caf35456681f518eaece137114d2e73f2bdc6c06e323e4c505c2fe7ed2d1d455"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.4/ork_darwin_amd64.tar.gz"
      sha256 "7bc512653e7e48a321022f0144f92b1fd57cece73ddb25db92e68633e9394a19"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.4/ork_linux_arm64.tar.gz"
      sha256 "dac5c96106c145d49e6d24114ecb7d8de44a3770af4d16485069295d89e13f54"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.4/ork_linux_amd64.tar.gz"
      sha256 "3fe46ac4181770d7440c4a6f2bd30eae719db24b0636a3175eae12838244b476"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
