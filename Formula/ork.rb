class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.1"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.1/ork_darwin_arm64.tar.gz"
      sha256 "458775464ffaf24e9fbbb8724a1765901b824e04e647a2cd42c800c3b5b77535"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.1/ork_darwin_amd64.tar.gz"
      sha256 "8964028a1552de66006e4181e39c14ade789b6bc6b965236c5f3e9302db6340c"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.1/ork_linux_arm64.tar.gz"
      sha256 "6730378888fcd139a871d6d95a78977becc6259b8063da047f70c956bb4bb3e3"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.1/ork_linux_amd64.tar.gz"
      sha256 "69ad4a27dea7e49ac918873912f2f6479e234df429a13f8d29e1d2acae9e5b51"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
