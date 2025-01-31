class Quickfind < Formula
  desc "A script to quickly find and search through files"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://github.com/Aditya-Baindur/quickFind/archive/refs/tags/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "2dbc0b4755acf96b3593d43ba98471d1b23ad5cc23d6d4d8f1312493401ffb77"

  depends_on "zsh"  # Optional: Only if required for script execution

  def install
    bin.install "cmd.sh"  # Adjust this path if the script is inside a subfolder
  end

  # Optionally run the script post-install, or remove this if not necessary
  def post_install
    system "zsh", "#{bin}/cmd.sh"
  end
end
