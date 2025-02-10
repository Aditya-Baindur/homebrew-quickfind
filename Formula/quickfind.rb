class Quickfind < Formula
  desc "A script to quickly find and search through files"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://github.com/Aditya-Baindur/quickFind/archive/refs/tags/2.0.0.tar.gz"
  version "2.0.0"
  sha256 "982e7dec505d7a466bf7dbb8ec1e8a4dc8c8f1863f44f9f4715efd1291494061"
  
  depends_on "zsh"

  def install
    bin.install "cmd.sh" => "quickfind"  # Rename and install the script
  end

  def post_install
    chmod 0755, bin/"quickfind"  # Ensure it's executable
    system bin/"quickfind"  # Auto-run quickfind after installation
  end
end
