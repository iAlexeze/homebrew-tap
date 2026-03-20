class Ork < Formula
  desc "The Kubernetes operator framework that needs no Go"
  homepage "https://github.com/iAlexeze/orkestra"
  version "0.0.0"
  license "MIT"
  # Updated automatically on each release
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
