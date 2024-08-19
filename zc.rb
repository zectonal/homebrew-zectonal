class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.15.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.3/zc_0.15.3_macos.zip"
      sha256 "98bc288f4de35a91e6a9a6dd7625139c5aa813387a38e62b60f936edf4264935"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.3/zc_0.15.3_macos_x86.zip"
      sha256 "e85479d541041fc54dc2340845df05e6b6f6dae20d8a76a4902e83e787136727"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end