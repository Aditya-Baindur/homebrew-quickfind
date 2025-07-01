class Quickfind < Formula
  desc "A script to quickly navigate through files and folders"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://github.com/Aditya-Baindur/quickFind/archive/refs/tags/4.0.tar.gz"
  version "4.0"
  sha256 "feefaf05cf5f177da43bcf6942776968bfaf0fcf926cf934736e78f5da926eb0"
  
  depends_on "bash"

  def install
    bin.install "cmd.sh" => "quickfind"  # Rename and install the script
  end

  def post_install
    chmod 0755, bin/"quickfind"  # Ensure it's executable
    system bin/"quickfind"  # Auto-run quickfind after installation
  end
end
