class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.8"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/orkcc_darwin_arm64.tar.gz"
      sha256 "d4422df2e135e0e77261640cd7bd512e4a81a14f44f36a5c9d035b098e5a4c15"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/orkcc_darwin_amd64.tar.gz"
      sha256 "21faf628337386606b0a7be2e376002bf3e106e99ea60460ee000cfb353aa664"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/orkcc_linux_arm64.tar.gz"
      sha256 "0f8a440ee17197e08626e2a7147d1f40ef88941c5664cd3f90ed0def39ec43e7"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.8/orkcc_linux_amd64.tar.gz"
      sha256 "028cde77b6a6c69bb62dffe9192e911f2e39d2665afbe0f3b68e3f705058b8f9"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
