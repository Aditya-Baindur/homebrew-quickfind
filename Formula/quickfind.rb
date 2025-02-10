class Quickfind < Formula
  desc "A script to quickly find and search through files"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://github.com/Aditya-Baindur/quickFind/archive/refs/tags/2.0.0.tar.gz"
  version "2.0.0"
  sha256 "982e7dec505d7a466bf7dbb8ec1e8a4dc8c8f1863f44f9f4715efd1291494061"

  depends_on "zsh"  # Optional: Only if required for script execution

  def install
    bin.install "cmd.sh"  # Adjust this path if the script is inside a subfolder
  end

  # Optionally run the script post-install, or remove this if not necessary
  def post_install
    system "zsh", "#{bin}/cmd.sh"
  end
end
