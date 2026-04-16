class Ork < Formula
  desc "The Kubernetes operator runtime that needs no programming language"
  homepage "https://github.com/iAlexeze/orkestra"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm   do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.3/ork_darwin_arm64.tar.gz"
      sha256 "dd7377b02fd3915384e0683670673a9387bc2f4cca9bc3f7ce199f22ea52e921"
    end
    on_intel do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.3/ork_darwin_amd64.tar.gz"
      sha256 "00ffc14e01f941f9c235a08f25c2f89673c74d4c247bf9e3a65d999520b90ca5"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.3/ork_linux_arm64.tar.gz"
      sha256 "ca3225e7b928901c5831e8ae87b6337f6e9b08b4fb7c16c8e7662ac6f69ab4da"
    end
    on_intel do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.3/ork_linux_amd64.tar.gz"
      sha256 "667de72deddecb645920e6210d8f2ff8467b8069a51cd56dc72a1a7111603c07"
    end
  end

  def install
    bin.install "ork"
  end

  test do
    system "#{bin}/ork", "version"
  end
end
