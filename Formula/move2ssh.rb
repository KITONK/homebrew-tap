class Move2ssh < Formula
    desc "A handy script for managing .ssh directories"
    homepage "https://github.com/KITONK/move2ssh"
    url "https://github.com/KITONK/move2ssh/archive/v1.0.0.tar.gz"
    sha256 "a5102b3d9b6badf02a951f6ac6a2a86a5f2e0d6474ba99b01077cf2964bcc471"
  
    depends_on "bash" => "4.0"
  
    def install
      bin.install "move2ssh.sh"
    end
  
    test do
      system "#{bin}/move2ssh", "--help"
    end
  end
  