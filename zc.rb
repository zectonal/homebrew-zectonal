class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.0/zc_0.17.0_macos.zip"
      sha256 "1f688eca5f17d16de7a73abd61e5d38cc1ec0f2d995b35376a5e60200420a59b"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.0/zc_0.17.0_macos_x86.zip"
      sha256 "f46c5d626ea4b8d1d025005f3a0e9254ac61428c183697339caa2af4bd7bd295"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end