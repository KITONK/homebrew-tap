class Move2ssh < Formula
    desc "A handy script for managing .ssh directories"
    homepage "https://github.com/KITONK/move2ssh"
    url "https://github.com/KITONK/move2ssh/archive/v1.0.0.tar.gz"
    sha256 "09ee3b7b711cb3055268985e4644388c6465c5f7d4a1ebc62b06369d2d780d1f"
  
    depends_on "bash" => "4.0"
  
    def install
      bin.install "move2ssh.sh"
    end
  
    test do
      system "#{bin}/move2ssh", "--help"
    end
  end
  