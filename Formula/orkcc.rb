class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/iAlexeze/orkestra"
  version "0.1.4"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.4/orkcc_darwin_arm64.tar.gz"
      sha256 "f8371d8b4a03eb1c3c6983d92316bf6ef83dc43bf1a91ee78c9f885c4452b32a"
    end
    on_intel do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.4/orkcc_darwin_amd64.tar.gz"
      sha256 "fd2096fd8278c365b7a15e19309bdd5556068904b0149b9c9ac87d6ec705b16d"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.4/orkcc_linux_arm64.tar.gz"
      sha256 "fa9b170827719e4f03cb283e8a66262202943f16822663f649b0999ff4dbe7bb"
    end
    on_intel do
      url    "https://github.com/iAlexeze/orkestra/releases/download/v0.1.4/orkcc_linux_amd64.tar.gz"
      sha256 "b641b689203e58d8e8f4218f9b8773fd8e2668e093679ed85e07e45a33dc40d4"
    end
  end

  def install
    bin.install "orkcc"
  end

  test do
    system "#{bin}/orkcc", "--help"
  end
end
