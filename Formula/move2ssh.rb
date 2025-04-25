class Move2ssh < Formula
    desc "A handy script for managing .ssh directories"
    homepage "https://github.com/KITONK/move2ssh"
    url "https://github.com/KITONK/move2ssh/archive/v1.2.0.tar.gz"
    sha256 "1e33af63548a4586c64f0310ae3994f14add12eed75c23cc27ce09b782270377"
    license "MIT"
    version "1.2.0"

    head do
      url "file://#{ENV['PWD']}/move2ssh"
    end
      
    def install
      bin.install "bin/move2ssh"

      # Install completions
      bash_completion.install "completions/bash/move2ssh"
      zsh_completion.install "completions/zsh/_move2ssh"
      fish_completion.install "completions/fish/move2ssh.fish"
    
      # PowerShell completion needs to be installed manually
      prefix.install "completions/powershell/move2ssh.ps1"
    end

    def caveats
      <<~EOS
        PowerShell completion has been installed to:
          #{prefix}/move2ssh.ps1
        
        Add the following to your PowerShell profile to enable completion:
          . "#{prefix}/move2ssh.ps1"
      EOS
    end
  
    test do
      system "#{bin}/move2ssh", "--help"
    end
  end
  