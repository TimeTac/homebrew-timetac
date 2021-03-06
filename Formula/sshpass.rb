# from @hudochenkov
# https://github.com/GhostLyrics/homebrew-custom/commit/a5bf0f6fda144c2cba4e1c768743f91b6fb047d8

class Sshpass < Formula
  desc "SSH passwort automation. Use only for edge-cases with Ansible secrets"
  homepage "https://sourceforge.net/projects/sshpass"
  url "https://downloads.sourceforge.net/project/sshpass/sshpass/1.06/sshpass-1.06.tar.gz"
  sha256 "c6324fcee608b99a58f9870157dfa754837f8c48be3df0f5e2f3accf145dee60"

  depends_on "gnu-sed"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "sshpass"
  end
end
