class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.5.3"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.3/ork_darwin_arm64.tar.gz"
      sha256 "a31363707199fc933354ca99fdae01c18d35b78eefa8c4ad36f0f8f136aa50d8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.3/ork_darwin_amd64.tar.gz"
      sha256 "56d19ce9464327fe68ea4469e0b596e6736d9fea9c432757324da813a3d62b28"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.3/ork_linux_arm64.tar.gz"
      sha256 "2af625d706ff46be12e216474c72d55c7ca6cd350eeb30445fecff880a8775ee"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.5.3/ork_linux_amd64.tar.gz"
      sha256 "ec82828e76475fab497360d3489bdef2469cd2ba37b35e38dee7fc44be98b157"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
