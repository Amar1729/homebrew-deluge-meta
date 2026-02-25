class DelugeMeta < Formula
  include Language::Python::Virtualenv

  desc "Meta package for Deluge 2.0 dependencies"
  homepage "https://deluge-torrent.org/"
  url "https://files.pythonhosted.org/packages/d5/d7/b655ee66d208002564c35179b49b0cc9f22916a309785dec2676c85d7c05/deluge-2.2.0.tar.gz"
  sha256 "f0fc64e052334ef294ca3951975dd926f129d62813f6c909bb523d914abe6537"
  license "GPL-3.0-only"
  revision 3

  bottle do
    root_url "https://github.com/Amar1729/homebrew-deluge-meta/releases/download/deluge-meta-2.2.0_2"
    sha256 cellar: :any, arm64_sequoia: "5a1bf3d478632d76c93887a86e3322e69142cde24f12bed69e33fa441ce9e1eb"
    sha256 cellar: :any, arm64_sonoma:  "fa49ff730e4df8bc046d41f48d5a7338973a7c4ba52e8a6f0bdf62e7e2eb596b"
  end

  depends_on "rust" => :build
  depends_on "adwaita-icon-theme"
  depends_on "cffi"
  depends_on "cryptography"
  depends_on "gettext"
  depends_on "gtk+3"
  depends_on "gtk-mac-integration"
  depends_on "libtorrent-rasterbar"
  depends_on "libxcb"
  depends_on "little-cms2"
  depends_on "openjpeg"
  depends_on "openssl@3"
  depends_on "pycparser"
  depends_on "pygobject3"
  depends_on "python@3.14"

  uses_from_macos "libffi"
  uses_from_macos "zlib"

  # manually added since Automat requires wheel (cmd bdist_wheel) to build
  resource "wheel" do
    url "https://files.pythonhosted.org/packages/89/24/a2eb353a6edac9a0303977c4cb048134959dd2a51b48a269dfc9dde00c8a/wheel-0.46.3.tar.gz"
    sha256 "e3e79874b07d776c40bd6033f8ddf76a7dad46a7b8aa1b2787a83083519a1803"
  end

  # manually added since homebrew-core deprecated python-specific packages like six
  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/6b/5c/685e6633917e101e5dcb62b9dd76946cbb57c26e133bae9e0cd36033c0a9/attrs-25.4.0.tar.gz"
    sha256 "16d5969b87f0859ef33a48b35d55ac1be6e42ae49d5e853b597db70c35c57e11"
  end

  resource "automat" do
    url "https://files.pythonhosted.org/packages/e3/0f/d40bbe294bbf004d436a8bcbcfaadca8b5140d39ad0ad3d73d1a8ba15f14/automat-25.4.16.tar.gz"
    sha256 "0017591a5477066e90d26b0e696ddc143baafd87b588cfac8100bc6be9634de0"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "constantly" do
    url "https://files.pythonhosted.org/packages/4d/6f/cb2a94494ff74aa9528a36c5b1422756330a75a8367bf20bd63171fc324d/constantly-23.10.4.tar.gz"
    sha256 "aa92b70a33e2ac0bb33cd745eb61776594dc48764b06c35e0efd050b7f1c7cbd"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/60/04/ee2a9e8542e4fa2773b81771ff8349ff19cdd56b7258a0cc442639052edb/cryptography-46.0.5.tar.gz"
    sha256 "abace499247268e3757271b2f1e244b36b06f8515cf27c4d49468fc9eb16e93d"
  end

  resource "hyperlink" do
    url "https://files.pythonhosted.org/packages/3a/51/1947bd81d75af87e3bb9e34593a4cf118115a8feb451ce7a69044ef1412e/hyperlink-21.0.0.tar.gz"
    sha256 "427af957daa58bc909471c6c40f74c5450fa123dd093fc53efd2e91d2705a56b"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "incremental" do
    url "https://files.pythonhosted.org/packages/ef/3c/82e84109e02c492f382c711c58a3dd91badda6d746def81a1465f74dc9f5/incremental-24.11.0.tar.gz"
    sha256 "87d3480dbb083c1d736222511a8cf380012a8176c2456d01ef483242abbbcf8c"
  end

  resource "mako" do
    url "https://files.pythonhosted.org/packages/9e/38/bd5b78a920a64d708fe6bc8e0a2c075e1389d53bef8413725c63ba041535/mako-1.3.10.tar.gz"
    sha256 "99579a6f39583fa7e5630a28c3c1f440e4e97a414b80372649c0ce338da2ea28"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/65/ee/299d360cdc32edc7d2cf530f3accf79c4fca01e96ffc950d8a52213bd8e4/packaging-26.0.tar.gz"
    sha256 "00243ae351a257117b6a241061796684b084ed1c516a08c48a3f7e147a9d80b4"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/fe/b6/6e630dff89739fcd427e3f72b3d905ce0acb85a45d4ec3e2678718a3487f/pyasn1-0.6.2.tar.gz"
    sha256 "9b59a2b25ba7e4f8197db7686c09fb33e658b98339fadb826e9512629017833b"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/e9/e6/78ebbb10a8c8e4b61a59249394a4a594c1a7af95593dc933a349c8d00964/pyasn1_modules-0.4.2.tar.gz"
    sha256 "677091de870a80aae844b1ca6134f54652fa2c8c5a52aa396440ac3106e941e6"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pyopenssl" do
    url "https://files.pythonhosted.org/packages/80/be/97b83a464498a79103036bc74d1038df4a7ef0e402cfaf4d5e113fb14759/pyopenssl-25.3.0.tar.gz"
    sha256 "c981cb0a3fd84e8602d7afc209522773b94c1c2446a3c710a75b06fe1beae329"
  end

  resource "pyxdg" do
    url "https://files.pythonhosted.org/packages/b0/25/7998cd2dec731acbd438fbf91bc619603fc5188de0a9a17699a781840452/pyxdg-0.28.tar.gz"
    sha256 "3267bb3074e934df202af2ee0868575484108581e6f3cb006af1da35395e88b4"
  end

  resource "rencode" do
    url "https://files.pythonhosted.org/packages/3a/fb/3c03dbe4438dd596e1378b5299990b81041739658a76e0f4a301eded67f4/rencode-1.0.6.tar.gz"
    sha256 "2586435c4ea7d45f74e26765ad33d75309de7cf47c4d762e8efabd39905c0718"
  end

  resource "service-identity" do
    url "https://files.pythonhosted.org/packages/07/a5/dfc752b979067947261dbbf2543470c58efe735c3c1301dd870ef27830ee/service_identity-24.2.0.tar.gz"
    sha256 "b8683ba13f0d39c6cd5d625d2c5f65421d6d707b013b375c355751557cbe8e09"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/76/95/faf61eb8363f26aa7e1d762267a8d602a1b26d4f3a1e758e92cb3cb8b054/setuptools-80.10.2.tar.gz"
    sha256 "8b0e9d10c784bf7d262c4e5ec5d4ec94127ce206e8738f29a437945fbc219b70"
  end

  resource "twisted" do
    url "https://files.pythonhosted.org/packages/13/0f/82716ed849bf7ea4984c21385597c949944f0f9b428b5710f79d0afc084d/twisted-25.5.0.tar.gz"
    sha256 "1deb272358cb6be1e3e8fc6f9c8b36f78eb0fa7c2233d2dbe11ec6fee04ea316"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "zope-interface" do
    url "https://files.pythonhosted.org/packages/86/a4/77daa5ba398996d16bb43fc721599d27d03eae68fe3c799de1963c72e228/zope_interface-8.2.tar.gz"
    sha256 "afb20c371a601d261b4f6edb53c3c418c249db1a9717b0baafc9a9bb39ba1224"
  end

  # use native file dialog
  patch :DATA

  def install
    virtualenv_install_with_resources using: "python@3.14"

    man1.install Dir["docs/man/*.1"]

    (var/"log/deluge-meta").mkpath
  end

  service do
    run [opt_bin/"deluged", "--do-not-daemonize", "--loglevel", "info", "--logfile",
         var/"log/deluge-meta/deluged.log"]
    keep_alive true
  end

  test do
    assert_match "deluged #{version}", shell_output("#{bin}/deluged --version")

    # ensure proper libraries are installed for deluge's python
    system "#{libexec}/bin/python", "-c", "import deluge"
    system "#{libexec}/bin/python", "-c", "import libtorrent"

    # still not really a functional test, but check that the daemon/console at least can run.
    pid = fork do
      system bin/"deluged", "-d"
    end
    sleep 1
    begin
      # 2.2.0: this will output "Could not connect to daemon:" and err traceback if can't connect.
      assert_match("", shell_output("#{bin}/deluge-console info"))
      assert_match("Daemon was shutdown", shell_output("#{bin}/deluge-console halt"))
    rescue
      # if halting doesn't work, make sure to kill daemon before failing.
      Process.kill "TERM", pid
      system "false"
    end
  end
end

__END__
diff --git a/deluge/ui/gtk3/addtorrentdialog.py b/deluge/ui/gtk3/addtorrentdialog.py
index 7e752bc99..33291428a 100644
--- a/deluge/ui/gtk3/addtorrentdialog.py
+++ b/deluge/ui/gtk3/addtorrentdialog.py
@@ -690,21 +690,15 @@ def update_treeview_toggles(self, _iter):
     def on_button_file_clicked(self, widget):
         log.debug('on_button_file_clicked')
         # Setup the filechooserdialog
-        chooser = Gtk.FileChooserDialog(
-            _('Choose a .torrent file'),
-            None,
+        chooser = Gtk.FileChooserNative.new(
+            "Choose a .torrent file'",
+            self.dialog,
             Gtk.FileChooserAction.OPEN,
-            buttons=(
-                _('_Cancel'),
-                Gtk.ResponseType.CANCEL,
-                _('_Open'),
-                Gtk.ResponseType.OK,
-            ),
         )
 
         chooser.set_transient_for(self.dialog)
         chooser.set_select_multiple(True)
-        chooser.set_property('skip-taskbar-hint', True)
+        # chooser.set_property('skip-taskbar-hint', True)
         chooser.set_local_only(False)
 
         # Add .torrent and * file filters
@@ -728,7 +722,7 @@ def on_button_file_clicked(self, widget):
         # Run the dialog
         response = chooser.run()
 
-        if response == Gtk.ResponseType.OK:
+        if response == Gtk.ResponseType.ACCEPT:
             result = [decode_bytes(f) for f in chooser.get_filenames()]
             self.config['default_load_path'] = decode_bytes(
                 chooser.get_current_folder()
diff --git a/deluge/ui/gtk3/createtorrentdialog.py b/deluge/ui/gtk3/createtorrentdialog.py
index ea578a687..1d3e28940 100644
--- a/deluge/ui/gtk3/createtorrentdialog.py
+++ b/deluge/ui/gtk3/createtorrentdialog.py
@@ -121,26 +121,20 @@ def adjust_piece_size(self):
     def on_button_file_clicked(self, widget):
         log.debug('on_button_file_clicked')
         # Setup the filechooserdialog
-        chooser = Gtk.FileChooserDialog(
-            _('Choose a file'),
+        chooser = Gtk.FileChooserNative.new(
+            "Choose a file'",
             self.dialog,
             Gtk.FileChooserAction.OPEN,
-            buttons=(
-                _('_Cancel'),
-                Gtk.ResponseType.CANCEL,
-                _('_Open'),
-                Gtk.ResponseType.OK,
-            ),
         )
 
         chooser.set_transient_for(self.dialog)
         chooser.set_select_multiple(False)
-        chooser.set_property('skip-taskbar-hint', True)
+        # chooser.set_property('skip-taskbar-hint', True)
 
         # Run the dialog
         response = chooser.run()
 
-        if response == Gtk.ResponseType.OK:
+        if response == Gtk.ResponseType.ACCEPT:
             result = chooser.get_filename()
         else:
             chooser.destroy()
@@ -157,26 +151,19 @@ def on_button_file_clicked(self, widget):
 
     def on_button_folder_clicked(self, widget):
         log.debug('on_button_folder_clicked')
-        # Setup the filechooserdialog
-        chooser = Gtk.FileChooserDialog(
-            _('Choose a folder'),
+        chooser = Gtk.FileChooserNative.new(
+            "Choose a folder",
             self.dialog,
             Gtk.FileChooserAction.SELECT_FOLDER,
-            buttons=(
-                _('_Cancel'),
-                Gtk.ResponseType.CANCEL,
-                _('_Open'),
-                Gtk.ResponseType.OK,
-            ),
         )
 
         chooser.set_transient_for(self.dialog)
         chooser.set_select_multiple(False)
-        chooser.set_property('skip-taskbar-hint', True)
+        # chooser.set_property('skip-taskbar-hint', True)
         # Run the dialog
         response = chooser.run()
 
-        if response == Gtk.ResponseType.OK:
+        if response == Gtk.ResponseType.ACCEPT:
             result = chooser.get_filename()
         else:
             chooser.destroy()
@@ -247,21 +234,15 @@ def on_button_save_clicked(self, widget):
             dialog.hide()
         else:
             # Setup the filechooserdialog
-            chooser = Gtk.FileChooserDialog(
-                _('Save .torrent file'),
+            chooser = Gtk.FileChooserNative.new(
+                "Save .torrent file'",
                 self.dialog,
                 Gtk.FileChooserAction.SAVE,
-                buttons=(
-                    _('_Cancel'),
-                    Gtk.ResponseType.CANCEL,
-                    _('_Save'),
-                    Gtk.ResponseType.OK,
-                ),
             )
 
             chooser.set_transient_for(self.dialog)
             chooser.set_select_multiple(False)
-            chooser.set_property('skip-taskbar-hint', True)
+            # chooser.set_property('skip-taskbar-hint', True)
 
             # Add .torrent and * file filters
             file_filter = Gtk.FileFilter()
@@ -277,7 +258,7 @@ def on_button_save_clicked(self, widget):
             # Run the dialog
             response = chooser.run()
 
-            if response == Gtk.ResponseType.OK:
+            if response == Gtk.ResponseType.ACCEPT:
                 result = chooser.get_filename()
             else:
                 chooser.destroy()
diff --git a/deluge/ui/gtk3/gtkui.py b/deluge/ui/gtk3/gtkui.py
index a0c5d8942..0bfa88f30 100644
--- a/deluge/ui/gtk3/gtkui.py
+++ b/deluge/ui/gtk3/gtkui.py
@@ -157,14 +157,32 @@ def on_die(*args):
             log.debug('Win32 "die" handler registered')
         elif osx_check() and windowing('quartz'):
             try:
-                import gtkosx_application
+                gi.require_version('GtkosxApplication', '1.0')
+                from gi.repository import GtkosxApplication
             except ImportError:
                 pass
             else:
-                self.osxapp = gtkosx_application.gtkosx_application_get()
+                self.osxapp = GtkosxApplication.Application()
                 self.osxapp.connect('NSApplicationWillTerminate', on_die)
                 log.debug('OSX quartz "die" handler registered')
 
+                # Workaround: weird font rendering
+                from gi.repository.Gdk import Screen
+                from gi.repository.Gtk import (
+                    STYLE_PROVIDER_PRIORITY_APPLICATION,
+                    CssProvider,
+                    StyleContext,
+                )
+                fontcss = b""" * { font-family: "" } """
+                fontcssprovider = CssProvider()
+                fontcssprovider.load_from_data(fontcss)
+
+                StyleContext.add_provider_for_screen(
+                    Screen.get_default(),
+                    fontcssprovider,
+                    STYLE_PROVIDER_PRIORITY_APPLICATION,
+                )
+
         # Set process name again to fix gtk issue
         setproctitle(getproctitle())
 
diff --git a/deluge/ui/gtk3/preferences.py b/deluge/ui/gtk3/preferences.py
index 59b22264b..8f1729c3b 100644
--- a/deluge/ui/gtk3/preferences.py
+++ b/deluge/ui/gtk3/preferences.py
@@ -1169,21 +1169,15 @@ def on_plugin_selection_changed(self, treeselection):
 
     def on_button_plugin_install_clicked(self, widget):
         log.debug('on_button_plugin_install_clicked')
-        chooser = Gtk.FileChooserDialog(
-            _('Select the Plugin'),
+        chooser = Gtk.Gtk.FileChooserNative.new(
+            "Select the Plugin",
             self.pref_dialog,
             Gtk.FileChooserAction.OPEN,
-            buttons=(
-                _('_Cancel'),
-                Gtk.ResponseType.CANCEL,
-                _('_Open'),
-                Gtk.ResponseType.OK,
-            ),
         )
 
         chooser.set_transient_for(self.pref_dialog)
         chooser.set_select_multiple(False)
-        chooser.set_property('skip-taskbar-hint', True)
+        # chooser.set_property('skip-taskbar-hint', True)
 
         file_filter = Gtk.FileFilter()
         file_filter.set_name(_('Plugin Eggs'))
@@ -1193,7 +1187,7 @@ def on_button_plugin_install_clicked(self, widget):
         # Run the dialog
         response = chooser.run()
 
-        if response == Gtk.ResponseType.OK:
+        if response == Gtk.ResponseType.ACCEPT:
             filepath = deluge.common.decode_bytes(chooser.get_filename())
         else:
             chooser.destroy()
