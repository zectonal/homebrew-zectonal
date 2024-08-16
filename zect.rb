class Zect < Formula
  desc "zect data quality monitoring and AI-derived root cause analysis"
  homepage "https://github.com/zectonal/homebrew-zectonal"
  version "0.15.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.2/zect_0.15.2_macos.zip"
      sha256 "169b6ebcfc7e42ad8177090f7aa1cb5114d72acaee15f30c0fa1eac204d746c7"
    else
      url "https://github.com/zectonal/homebrew-zectonal/releases/download/v0.15.2/zect_0.15.2_macos_x86.zip"
      sha256 "db633cfed70201ab664682d9d0a27e8ddeb253dd96eed3c0048029c484f9ffc2"
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
    stop_signal :SIGINT
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