class Quickfind < Formula
    desc "A description of your quickFind script"
    homepage "https://github.com/Aditya-Baindur/quickFind"
    url "https://github.com/Aditya-Baindur/quickFind/archive/v1.0.0.tar.gz"  # Adjust to your specific version URL
    sha256 "34052e7bab22fd994268090324cd6eb837d657daad1d50fb402925b59cb175e6"  # Replace with the actual checksum from `shasum`
  
    depends_on "zsh"  # Any necessary dependencies
  
    def install
      bin.install "cmd.sh"  # Path to your script file
    end
  end
  