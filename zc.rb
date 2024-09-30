class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.1/zc_0.17.1_macos.zip"
      sha256 "d45dbdefd285585c8e6c632658f8fa4eda60e96e03f934d2b4f1b6680ac015fc"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.1/zc_0.17.1_macos_x86.zip"
      sha256 "5c74370b0d48017935708c125e68fc76255e94dcfd750be26c3a6c87c3bd6a51"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end