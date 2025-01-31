class Quickfind < Formula
  desc "A description of your quickFind script"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://github.com/Aditya-Baindur/quickFind/archive/refs/tags/1.0.0.tar.gz"  
  version "1.0.0"  # Assigning a fixed version
  sha256 "2dbc0b4755acf96b3593d43ba98471d1b23ad5cc23d6d4d8f1312493401ffb77"  # Your script's checksum

  depends_on "zsh"  # If required to run the script

  def install
    bin.install "cmd.sh"  # Install the script to the bin directory
  end
end
