class Move2ssh < Formula
    desc "A handy script for managing .ssh directories"
    homepage "https://github.com/KITONK/move2ssh"
    url "https://github.com/KITONK/move2ssh/archive/v1.2.0.tar.gz"
    sha256 "e7defe7c795e7f56fcdcfe719763928b8dd8c0cf7ed844677c4ea204dd262911"
    license "MIT"
    version "1.2.0"

    head do
      url "file://#{ENV['PWD']}/move2ssh"
    end
  
    def install
      # Install main script
      bin.install "bin/move2ssh"
  
      # Install shell completions
      bash_completion.install "completions/bash/move2ssh"
      zsh_completion.install "completions/zsh/_move2ssh"
      fish_completion.install "completions/fish/move2ssh.fish"
      
      # Install PowerShell completion to share directory
      share.install "completions/powershell/move2ssh.ps1"
    end
  
    def caveats
      <<~EOS
        PowerShell completion script has been installed to:
          #{share}/move2ssh.ps1
  
        To enable completions:
  
        Bash:
          Add to ~/.bashrc:
          source #{bash_completion}/move2ssh
  
        Zsh:
          Completions have been installed to:
          #{zsh_completion}
  
        Fish:
          Completions have been installed to:
          #{fish_completion}
  
        PowerShell:
          Add to your PowerShell profile:
          . "#{share}/move2ssh.ps1"
      EOS
    end
  
    test do
      system "#{bin}/move2ssh", "--help"
    end
  end
  