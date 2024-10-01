class Zect < Formula
  desc "zect data quality monitoring and AI-derived root cause analysis"
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.17.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.2/zect_0.17.2_macos.zip"
      sha256 "5886a4ff7eec799271ab881a09f33254a899c36877996f826ee6db53f86cd854"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.17.2/zect_0.17.2_macos_x86.zip"
      sha256 "34b2e07acfa5f6ee962a614eb04660037228d481f52111505f8f2ef2b6428fc9"
    end
  end
  
  def install
    bin.install "zect"
  end

  service do
    run [opt_bin/"zect"]
    keep_alive false
    working_dir var
    log_path var/"log/zect.log"
    error_log_path var/"log/zect.error.log"
  end
  def caveats
    <<~EOS
      To completely remove Zect and all its data, run:
        brew uninstall zect
        rm -rf #{var}/log/zect*
        rm -rf ~/.config/zect
  
      To start zectonal/zectonal/zect now and restart at login:
        brew services start zect
  
      Or, if you don't want/need a background service you can just run:
        #{opt_bin}/zect
        
      Default configuration file location:
        ~/.config/zect/config.toml
  
      To use a custom configuration file:
        #{opt_bin}/zect --config-file /path/to/your/config.toml
  
      For full usage instructions, run:
        #{opt_bin}/zect --help
        
      http://localhost:8080
    EOS
  end
  def post_uninstall
    rm_rf var/"log/zect*"
    rm_rf "~/.config/zect"
  end
  test do
    system "#{bin}/zect", "--version"
  end
end