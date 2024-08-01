class Zc < Formula
  desc "command line data quality monitoring that is blazingly fast and easy to use."
  homepage "https://github.com/zectonal/homebrew-zectonal"
  url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.0/zc_0.15.0_macos.zip"
  sha256 "939294c400882deef2879457a598a9132a4dba8550d393ac481b56fe5f092a85" 
  version "0.15.0"

  def install
    bin.install "zc"
  end

  test do
    system "#{bin}/zc", "--version"
  end
end
