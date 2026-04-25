class OrkCc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.2.6"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.6/orkcc_darwin_arm64.tar.gz"
      sha256 "7330250946c4b320ef778d3d5a279108233003358f2da5fd964307059fc6e051"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.6/orkcc_darwin_amd64.tar.gz"
      sha256 "2e468cea25af8f9cad6c34df7ed67766ff21a2b142aa1181fc68c268dd6c7069"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.6/orkcc_linux_arm64.tar.gz"
      sha256 "6a390125adb7a544ad5af7ef27f004059669028a1dbb4f967e78a8d5cb75eac0"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.2.6/orkcc_linux_amd64.tar.gz"
      sha256 "c3b7e6da30a53c2b5437f1331577c2f586d0889627eb06430a414839edf5056b"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
