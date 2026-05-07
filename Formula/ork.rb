class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.9"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/ork_darwin_arm64.tar.gz"
      sha256 "1dbfb8d91748b479ae6101cb2f84edcf9c97195bfb209a51583142c571b9c8f9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/ork_darwin_amd64.tar.gz"
      sha256 "4f8eb803c6b73138628c0cee4e87fe633aecadf8cb2a0ff321b9058fd3012693"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/ork_linux_arm64.tar.gz"
      sha256 "4a42c7e54e7650c35f2504c1646912515a4a4e3efb0a0bf490c00fdab75b0df4"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.9/ork_linux_amd64.tar.gz"
      sha256 "eb48e7ed4fbf6439e583907c6aa4762df1741b6c1113cbb7d69043f9bf9dfeba"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
