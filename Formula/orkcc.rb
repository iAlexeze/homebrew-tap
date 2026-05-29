class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.6.0"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_arm64.tar.gz"
      sha256 "8c417a99bb34a8af05d810e886efdcb5bf60212948df8034ee4d560513116702"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_darwin_amd64.tar.gz"
      sha256 "539dfb35e4fc1b19b28016ffbb23001b145035db272e296984c7c31edf7c808a"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_arm64.tar.gz"
      sha256 "0562e0f2c712d1c63f636164874be458d411e0b393e8bdd30eb6a123b88b7280"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.6.0/orkcc_linux_amd64.tar.gz"
      sha256 "f5138ad767e8dd7be68ca5e730f6f8b59a20a391b04b16563e224969719d2767"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
