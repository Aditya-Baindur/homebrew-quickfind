class Quickfind < Formula
  desc "Directory alias manager with quick access and cd override"
  homepage "https://github.com/Aditya-Baindur/quickFind"
  url "https://github.com/Aditya-Baindur/quickFind/archive/refs/tags/5.0.0.tar.gz"
  sha256 "337a1a7cc58693dec6aab2ad41f129552d99d53b6314eef0f1d7b1232ed99d05"
  license "MIT"

  def install
    system "make"
    bin.install "quickfind"

    # install global qfcd shell function
    system "sudo", "./qfcd-init"
  end

  def caveats
    <<~EOS
      The shell function 'qfcd' was installed to /etc/profile.d/qfcd.sh.
      It will be auto-loaded in all login shells.

      🧠 To use it in this terminal session, run:
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
