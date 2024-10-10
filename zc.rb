class Zc < Formula
  desc "Command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.17.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.3/zc_0.17.3_macos.zip"
      sha256 "880ceee7bc2988ae9d8ffe73280d747ab364ff681073c190ad6b607f658bb50a"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.3/zc_0.17.3_macos_x86.zip"
      sha256 "8b49a58d0b01ae68d28934d5b58d51e95408ba20874b296fe0f5688ff85430ce"
    end
  end

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end