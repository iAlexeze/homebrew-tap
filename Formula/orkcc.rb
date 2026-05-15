class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.4.7"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_darwin_arm64.tar.gz"
      sha256 "5ab75c285f2f4d4644b10c253765859ab31f82884ec89f73c39335eff94329be"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_darwin_amd64.tar.gz"
      sha256 "b4c1c7744a5ea02cbd9eb1464c6c1a73289b8ed8c23b5787b1b99d3187b8eea3"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_linux_arm64.tar.gz"
      sha256 "1224e9f756b4868a454ff46cc910659032848017ec27c689c0b60a3bf55b6d79"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.4.7/orkcc_linux_amd64.tar.gz"
      sha256 "7fc185c2cf145951ecaf4e5aa1196876022e62cf52af4b65971235d997beab9b"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
