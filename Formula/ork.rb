class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.5"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.5/ork_darwin_arm64.tar.gz"
      sha256 "8406f5f4d2e323e58b6338d58c740fcadbb6520cd007ee0b4a43cf9f30cf1a70"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.5/ork_darwin_amd64.tar.gz"
      sha256 "92243a18f28a43f6b62277be2f06461d075a48b16c70749d6454b401618da404"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.5/ork_linux_arm64.tar.gz"
      sha256 "b96664f42ccbdcf7212b53af4b24dfb08e1018dabd28135c989b2b8442d146af"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.5/ork_linux_amd64.tar.gz"
      sha256 "ef734af7695173976f2a35886511e5450c40d61bc15aa916da5a872957e79d25"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
