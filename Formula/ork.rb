class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0alpha1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0alpha1/ork_darwin_arm64.tar.gz"
      sha256 "0f1c92c24236fc1b4c02a71e33dd6a8d8e90b8d2b4638f42ef37da48221ad92f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0alpha1/ork_darwin_amd64.tar.gz"
      sha256 "4382eedde6f231851049ebfae75c67dafa25fc87b51c5e0bb2229adf5c880019"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0alpha1/ork_linux_arm64.tar.gz"
      sha256 "b86159a59b2b32a321008d2ea526c189c097c7a0b276f005a176eb6eeafae0c2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0alpha1/ork_linux_amd64.tar.gz"
      sha256 "4ec329a358a465bfc4120af1d944bde174f5f0667a702ab0b799fdb30c31066a"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
