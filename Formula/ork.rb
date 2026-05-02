class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/ork_darwin_arm64.tar.gz"
      sha256 "c313a518558b60f6365c70901e8de27d4e15262611faafea30f031295ac39ba9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/ork_darwin_amd64.tar.gz"
      sha256 "8a9dc22caacf1c3cdb4b59c3c5465013723379a0742b45f7f84f8c24dbfd0c43"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/ork_linux_arm64.tar.gz"
      sha256 "984fc228705433e67c79df7d543b784e2d6a6a955a613b2fdf0344733931e2c5"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.7/ork_linux_amd64.tar.gz"
      sha256 "4c5a8c481b66f7c3d48a8192c756515d47e365336bb0597d7205c3bcb56540e5"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
