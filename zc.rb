class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.15.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.7/zc_0.15.7_macos.zip"
      sha256 "69e384b1609b78c7ae465cdf53d15c95abcd6d501cd84cab110222afff5998f2"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.7/zc_0.15.7_macos_x86.zip"
      sha256 "c58284140801a6dbfa307d5d258b1b7635162031c779f83278008f1570cd8701"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end