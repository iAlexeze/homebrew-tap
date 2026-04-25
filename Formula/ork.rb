class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.6/ork_darwin_arm64.tar.gz"
      sha256 "e5e845de4eeaa27670c67d0b6100c83ab854f1cb3c159cfd9df4d876a3452975"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.6/ork_darwin_amd64.tar.gz"
      sha256 "bf982b5502d618901b5be285e8a742303eb6812f65c3d89c02bc102c52fa458c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.6/ork_linux_arm64.tar.gz"
      sha256 "536ea799776234d64dca9bb29680c9d831f21f01c7adfbad8db817d41c117d7a"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.6/ork_linux_amd64.tar.gz"
      sha256 "73f323c57602642d10b1d8628a29540e0b29a151ee27ef76e165159bc3bf2da7"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
