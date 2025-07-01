class Quickfind < Formula
  desc "A script to quickly navigate through files and folders"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://github.com/Aditya-Baindur/quickFind/archive/refs/tags/4.0.tar.gz"
  version "4.0"
  sha256 "5744a281b2fb9a3df86b120a76f6db2af1de41c7ff078de9ff382740f3d7b83f"
  
  depends_on "bash"

  def install
    bin.install "cmd.sh" => "quickfind"  # Rename and install the script
  end

  def post_install
    chmod 0755, bin/"quickfind"  # Ensure it's executable
    system bin/"quickfind"  # Auto-run quickfind after installation
  end
end
