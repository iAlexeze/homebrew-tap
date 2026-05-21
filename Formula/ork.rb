class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_darwin_arm64.tar.gz"
      sha256 "fd4b9ee5590f359ad1bb69f2084d67f2a5f8f1dcc33430c1b2ec1464d979ecab"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_darwin_amd64.tar.gz"
      sha256 "d64aea648fc2e96f42ea71bf493a76d0ec639d108c7177703c01e26c1d33f030"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_linux_arm64.tar.gz"
      sha256 "c269e2c302b3438f5e383a6796d610b7ce91ed8e4f56ec7e95cec7c8a42dc698"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.0/ork_linux_amd64.tar.gz"
      sha256 "2738a282ce4427b2fec1ce1003cfd3e4e16bad953eb936ec17c4d889a1e87896"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
