class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.2"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/ork_darwin_arm64.tar.gz"
      sha256 "66b9b0e24b6f8a8e5749f8d68ee517e59ab10861b68a4263ecdc8ad049c788e2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/ork_darwin_amd64.tar.gz"
      sha256 "4f70f771d187a50759fa10984467503d1f0cc978431c8275e64ab30a62e6a689"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/ork_linux_arm64.tar.gz"
      sha256 "55d79166e58a66beac0deebf6bbf141bed113435864c49ba96b0ce9b51c3538e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.2/ork_linux_amd64.tar.gz"
      sha256 "0778b15aa3c8bd938bfe96951a1872f4bdd0cb36f68380e29925cf35c1f973f0"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
