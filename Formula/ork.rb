class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.5"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.5/ork_darwin_arm64.tar.gz"
      sha256 "9a307d5d1a79edea77af9ff4e94cd7b39c09f5858378ad4c48384bc94e8f1196"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.5/ork_darwin_amd64.tar.gz"
      sha256 "cfc2e3749611ce57f694658be354742ed9a56722ca6df09772376087422be7ae"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.5/ork_linux_arm64.tar.gz"
      sha256 "184638070597d06f0b98e00b2596afe4b302887f245a3c7f44baa0193591178c"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.5/ork_linux_amd64.tar.gz"
      sha256 "7e27653df00f2bcbd67be0832561d0ddcb2cb070e9b470807132e6c4dbbff823"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
