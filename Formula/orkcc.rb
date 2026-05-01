class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.3.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.6/orkcc_darwin_arm64.tar.gz"
      sha256 "edf5780fd1bc66557a61384335061df6364f4a6a39cd02406c03d0d0bc82e9fb"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.6/orkcc_darwin_amd64.tar.gz"
      sha256 "b34cc569d8d73943017a7f99a49edc50f79195e45467f2829b2516b066a242b4"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.6/orkcc_linux_arm64.tar.gz"
      sha256 "75c70d73c74f932b431ef80d410f9646da6e4162a982c252de802a7a5399210e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.3.6/orkcc_linux_amd64.tar.gz"
      sha256 "94696b4c88c395fae1c4d6ae8627b160d0b678367113649585cae87b3ccf995f"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
