class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.7/orkcc_darwin_arm64.tar.gz"
      sha256 "ae74dee65a4b904b9a219883ed15e547f25ed91355cecb60a300ef837f494eb3"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.7/orkcc_darwin_amd64.tar.gz"
      sha256 "e7154083a962b7d051f2cb21ecb7f6a54c248d985626996583c787a5c283bafc"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.7/orkcc_linux_arm64.tar.gz"
      sha256 "9efdd0810ca0e6619199da83903841149459e2b2e82949d8354ac5a916a36532"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.7/orkcc_linux_amd64.tar.gz"
      sha256 "46709ab0b76876009a113d8767d97dc253608472b5c40a76c768d67dd7a331b6"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
