class Move2ssh < Formula
    desc "A handy script for managing .ssh directories"
    homepage "https://github.com/KITONK/move2ssh"
    url "https://github.com/KITONK/move2ssh/archive/v1.0.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  
    depends_on "bash" => "4.0"
  
    def install
      bin.install "move2ssh.sh"
    end
  
    test do
      system "#{bin}/move2ssh", "--help"
    end
  end
  