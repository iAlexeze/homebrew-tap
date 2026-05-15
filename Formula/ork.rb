class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_darwin_arm64.tar.gz"
      sha256 "95fb96232d3fb2b7f9b4df655b5cf30cf2dbacd618d78555a1ad7f8a80983648"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_darwin_amd64.tar.gz"
      sha256 "37a281322b3674b349efee5d1c6f3dbeece121996b80b64f86d21db93a26e78b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_linux_arm64.tar.gz"
      sha256 "083d6fce854c21e7e54720119fb209389463d44f1e886bb6243027721e5bfa22"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/ork_linux_amd64.tar.gz"
      sha256 "0007896563a0ad9d7391ca38409b20a38205ef488ecd5f848c8338ece7166bda"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
