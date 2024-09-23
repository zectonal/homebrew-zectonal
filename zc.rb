class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.16.1/zc_0.16.1_macos.zip"
      sha256 "f289f217792c8f6f37dae33df63e18e5c6d9dc7d917b3de7b30b13e23154ad12"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.16.1/zc_0.16.1_macos_x86.zip"
      sha256 "1c8d9452ef60965676a0c8f4d2a2b6aff0f71818070876b00535dd736c9bb584"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end