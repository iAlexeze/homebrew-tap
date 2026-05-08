class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/ork_darwin_arm64.tar.gz"
      sha256 "a6bd1f03784821bda733d6d84a031234df33a3a2b1b3af74bf5a5d0170bbd19f"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/ork_darwin_amd64.tar.gz"
      sha256 "49b36f267608f5bdca629f34b57a1f257ba3599047d8afb1937c7056291959ad"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/ork_linux_arm64.tar.gz"
      sha256 "f842838869adc2fff9efac8fdef72ae79530b47fd4cdf0e2d30c34dc79f3eaaa"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.0/ork_linux_amd64.tar.gz"
      sha256 "af596652e2b84ac80b80bcb9b8ede00d03131403fa1682f5a398633ccd2ec765"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
