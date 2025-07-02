class Quickfind < Formula
  desc "Directory alias manager with quick access and cd override"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://github.com/Aditya-Baindur/quickFind/archive/refs/tags/5.0.1.tar.gz"
  sha256 "269657c471d0fe42ddf28b5e684cab6336f68147446f2cf9d3c7f253f5c567ba"
  license "MIT"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end


  def caveats
    <<~EOS
      The shell function 'qfcd' is not auto-installed by Homebrew for security reasons.

      🧠 To enable it, run manually:
          sudo #{HOMEBREW_PREFIX}/bin/qfcd-init

      💡 To activate it in this session:
          . /etc/profile.d/qfcd.sh

      ⚠️ If using zsh and it doesn't auto-load, add this to ~/.zprofile:

          [[ -d /etc/profile.d ]] && for f in /etc/profile.d/*.sh; do source "$f"; done
    EOS
  end

  test do
    assert_equal "true", shell_output("#{bin}/quickfind --brew").strip

    system "#{bin}/quickfind", "init", "testalias"
    assert_match "testalias", shell_output("#{bin}/quickfind list")
  end
end
