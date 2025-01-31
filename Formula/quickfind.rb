class Quickfind < Formula
  desc "A description of your quickFind script"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://raw.githubusercontent.com/Aditya-Baindur/quickFind/main/cmd.sh"  # Direct link to the raw script
  version "1.0.0"  # Add a version number here
  sha256 "34052e7bab22fd994268090324cd6eb837d657daad1d50fb402925b59cb175e6"  # Your script's checksum

  depends_on "zsh"  # If required to run the script

  def install
    bin.install "cmd.sh"  # Install the script to the bin directory
  end
end
