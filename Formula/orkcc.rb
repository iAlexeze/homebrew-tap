class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/ialexeze/orkestra"
  version "0.1.5"
  license "Apache 2.0"

  on_macos do
    on_arm   do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.5/orkcc_darwin_arm64.tar.gz"
      sha256 "342a3ff67e3e0a4af1e0da7b1792556cc8a19a61c62722d0d123c77feeb5c2ac"
    end
    on_intel do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.5/orkcc_darwin_amd64.tar.gz"
      sha256 "4448007373031b1c070e41d2291ee8f3f1fa0e313d8c950974cd1b61d14d412d"
    end
  end

  on_linux do
    on_arm   do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.5/orkcc_linux_arm64.tar.gz"
      sha256 "21161ce8d6daabbc6a6131c0646a2913525b22bd83c840a02be59bbb2de75f1e"
    end
    on_intel do
      url    "https://github.com/ialexeze/orkestra/releases/download/v0.1.5/orkcc_linux_amd64.tar.gz"
      sha256 "3917a19802fc8cbbd8f3512109bb06251647348a5dc16a57257476ab3019d706"
    end
  end

  def install
    bin.install "orkcc"
  end

  test do
    system "#{bin}/orkcc", "--help"
  end
end
