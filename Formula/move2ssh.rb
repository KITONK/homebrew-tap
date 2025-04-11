class Move2ssh < Formula
    desc "A handy script for managing .ssh directories"
    homepage "https://github.com/KITONK/move2ssh"
    url "https://github.com/KITONK/move2ssh/archive/v1.1.0.tar.gz"
    sha256 "335f93832ef7f851c7db619d64f30eb1eb815c2209eaae5839c77bf34a79e5d9"
  
    depends_on "bash" => "4.0"
  
    def install
      bin.install "move2ssh.sh"
    end
  
    test do
      system "#{bin}/move2ssh", "--help"
    end
  end
  