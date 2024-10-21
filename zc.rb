class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.17.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.4/zc_0.17.4_macos.zip"
      sha256 "1c78c625623ddb0db98008251153c195eca921ad6b8a586ff84c97b9b2ae6b1f"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.4/zc_0.17.4_macos_x86.zip"
      sha256 "bf2816a9e0e6a370c270eb41032e9ff128e4bebfc7c494c6e4a48044d3765dbf"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end