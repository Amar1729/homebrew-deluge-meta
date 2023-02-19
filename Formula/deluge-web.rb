class DelugeWeb < Formula
  desc "Formula for running deluge-web"
  homepage "https://deluge-torrent.org/"
  url "https://files.pythonhosted.org/packages/00/d7/8673068046ded6eaa82caaa2afd6f0751faf591aab5ad150aeafe0d47cb3/deluge-2.1.1.tar.gz"
  sha256 "d6ea7e1f5bdd75f40cbd1d56f0c97cd1b5b74bc9e03783858c7daa81063dd4b9"
  license "GPL-3.0"

  keg_only "deluge-meta provides the deluge-web executable"

  depends_on "deluge-meta"

  def install
    bin.install_symlink "#{Formula["deluge-meta"].opt_bin}/deluge-web"
  end

  service do
    run ["#{Formula["deluge-meta"].opt_bin}/deluge-web", "--do-not-daemonize", "--loglevel", "info", "--logfile",
         var/"log/deluge-meta/deluge-web.log"]
    keep_alive true
  end

  test do
    system "true"
  end
end
