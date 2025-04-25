class DelugeMeta < Formula
  include Language::Python::Virtualenv

  desc "Meta package for Deluge 2.0 dependencies"
  homepage "https://deluge-torrent.org/"
  url "https://files.pythonhosted.org/packages/00/d7/8673068046ded6eaa82caaa2afd6f0751faf591aab5ad150aeafe0d47cb3/deluge-2.1.1.tar.gz"
  sha256 "d6ea7e1f5bdd75f40cbd1d56f0c97cd1b5b74bc9e03783858c7daa81063dd4b9"
  license "GPL-3.0-only"
  revision 5

  bottle do
    root_url "https://github.com/Amar1729/homebrew-deluge-meta/releases/download/deluge-meta-2.1.1_5"
    rebuild 2
    sha256 cellar: :any,                 arm64_sonoma: "41ccaae6938dbd1c00490972a247c49e62a9df7130ec7e6a865061e94d8a4338"
    sha256 cellar: :any,                 ventura:      "7453af31910f904e4771137835fb84c6919fc0ca43b01ea83597790d24633f3d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d7f2938115fe764a5ba4287cbfc64af60d063f04c066c53315550010694823db"
  end

  depends_on "rust" => :build
  depends_on "adwaita-icon-theme"
  depends_on "cffi"
  depends_on "cryptography"
  depends_on "gettext"
  depends_on "gtk+3"
  depends_on "libtorrent-rasterbar"
  depends_on "libxcb"
  depends_on "little-cms2"
  depends_on "openjpeg"
  depends_on "pycparser"
  depends_on "pygobject3"
  depends_on "python-setuptools"
  depends_on "python@3.13"
  depends_on "six"

  uses_from_macos "libffi"
  uses_from_macos "zlib"

  # manually added since Automat requires wheel (cmd bdist_wheel) to build
  resource "wheel" do
    url "https://files.pythonhosted.org/packages/8a/98/2d9906746cdc6a6ef809ae6338005b3f21bb568bea3165cfc6a243fdc25c/wheel-0.45.1.tar.gz"
    sha256 "661e1abd9198507b1409a20c02106d9670b2576e916d58f520316666abca6729"
  end

  # manually added since python 3.13 deprecated `cgi` module, but deluge doesn't explicitly depend on it yet
  resource "legacy-cgi" do
    url "https://files.pythonhosted.org/packages/a6/ed/300cabc9693209d5a03e2ebc5eb5c4171b51607c08ed84a2b71c9015e0f3/legacy_cgi-2.6.3.tar.gz"
    sha256 "4c119d6cb8e9d8b6ad7cc0ddad880552c62df4029622835d06dfd18f438a8154"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/5a/b0/1367933a8532ee6ff8d63537de4f1177af4bff9f3e829baf7331f595bb24/attrs-25.3.0.tar.gz"
    sha256 "75d7cefc7fb576747b2c81b4442d4d4a1ce0900973527c011d1030fd3bf4af1b"
  end

  resource "Automat" do
    url "https://files.pythonhosted.org/packages/e3/0f/d40bbe294bbf004d436a8bcbcfaadca8b5140d39ad0ad3d73d1a8ba15f14/automat-25.4.16.tar.gz"
    sha256 "0017591a5477066e90d26b0e696ddc143baafd87b588cfac8100bc6be9634de0"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
    sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
  end

  resource "constantly" do
    url "https://files.pythonhosted.org/packages/4d/6f/cb2a94494ff74aa9528a36c5b1422756330a75a8367bf20bd63171fc324d/constantly-23.10.4.tar.gz"
    sha256 "aa92b70a33e2ac0bb33cd745eb61776594dc48764b06c35e0efd050b7f1c7cbd"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/cd/25/4ce80c78963834b8a9fd1cc1266be5ed8d1840785c0f2e1b73b8d128d505/cryptography-44.0.2.tar.gz"
    sha256 "c63454aa261a0cf0c5b4718349629793e9e634993538db841165b3df74f37ec0"
  end

  resource "deluge" do
    url "https://files.pythonhosted.org/packages/00/d7/8673068046ded6eaa82caaa2afd6f0751faf591aab5ad150aeafe0d47cb3/deluge-2.1.1.tar.gz"
    sha256 "d6ea7e1f5bdd75f40cbd1d56f0c97cd1b5b74bc9e03783858c7daa81063dd4b9"
  end

  resource "hyperlink" do
    url "https://files.pythonhosted.org/packages/3a/51/1947bd81d75af87e3bb9e34593a4cf118115a8feb451ce7a69044ef1412e/hyperlink-21.0.0.tar.gz"
    sha256 "427af957daa58bc909471c6c40f74c5450fa123dd093fc53efd2e91d2705a56b"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "incremental" do
    url "https://files.pythonhosted.org/packages/27/87/156b374ff6578062965afe30cc57627d35234369b3336cf244b240c8d8e6/incremental-24.7.2.tar.gz"
    sha256 "fb4f1d47ee60efe87d4f6f0ebb5f70b9760db2b2574c59c8e8912be4ebd464c9"
  end

  resource "Mako" do
    url "https://files.pythonhosted.org/packages/9e/38/bd5b78a920a64d708fe6bc8e0a2c075e1389d53bef8413725c63ba041535/mako-1.3.10.tar.gz"
    sha256 "99579a6f39583fa7e5630a28c3c1f440e4e97a414b80372649c0ce338da2ea28"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
    sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/ba/e9/01f1a64245b89f039897cb0130016d79f77d52669aae6ee7b159a6c4c018/pyasn1-0.6.1.tar.gz"
    sha256 "6f580d2bdd84365380830acf45550f2511469f673cb4a5ae3857a3170128b034"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/e9/e6/78ebbb10a8c8e4b61a59249394a4a594c1a7af95593dc933a349c8d00964/pyasn1_modules-0.4.2.tar.gz"
    sha256 "677091de870a80aae844b1ca6134f54652fa2c8c5a52aa396440ac3106e941e6"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  resource "pyOpenSSL" do
    url "https://files.pythonhosted.org/packages/9f/26/e25b4a374b4639e0c235527bbe31c0524f26eda701d79456a7e1877f4cc5/pyopenssl-25.0.0.tar.gz"
    sha256 "cd2cef799efa3936bb08e8ccb9433a575722b9dd986023f1cabc4ae64e9dac16"
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

  resource "Twisted" do
    url "https://files.pythonhosted.org/packages/77/1c/e07af0df31229250ab58a943077e4adbd5e227d9f2ac826920416b3e5fa2/twisted-24.11.0.tar.gz"
    sha256 "695d0556d5ec579dcc464d2856b634880ed1319f45b10d19043f2b57eb0115b5"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/37/23083fcd6e35492953e8d2aaaa68b860eb422b34627b13f2ce3eb6106061/typing_extensions-4.13.2.tar.gz"
    sha256 "e6c81219bd689f51865d9e372991c540bda33a0379d5573cddb9a3a23f7caaef"
  end

  resource "zope-interface" do
    url "https://files.pythonhosted.org/packages/30/93/9210e7606be57a2dfc6277ac97dcc864fd8d39f142ca194fdc186d596fda/zope.interface-7.2.tar.gz"
    sha256 "8b49f1a3d1ee4cdaf5b32d2e738362c7f5e40ac8b46dd7d1a65e82a4872728fe"
  end

  def install
    virtualenv_install_with_resources using: "python@3.13"

    %w[deluge deluge-console deluge-gtk deluge-web deluged].each do |cmd|
      (bin/cmd).write_env_script(libexec/"bin/#{cmd}", PYTHONPATH: ENV["PYTHONPATH"])
    end

    man1.install Dir["docs/man/*.1"]

    (var/"log/deluge-meta").mkpath
  end

  service do
    run [opt_bin/"deluged", "--do-not-daemonize", "--loglevel", "info", "--logfile",
         var/"log/deluge-meta/deluged.log"]
    keep_alive true
  end

  test do
    # this is not a "functional" test, but its a little tough to do one for a torrent client
    assert_match "deluged #{version}", shell_output("#{bin}/deluged --version")

    # TODO: convoluted, cleanup.
    # still not really a functional test, but check that the daemon at least can run.
    pid = fork do
      system bin/"deluged", "-d"
    end
    sleep 1
    Process.kill "TERM", pid

    # ensure proper libraries are installed for deluge's python
    system "#{libexec}/bin/python", "-c", "import deluge"
    system "#{libexec}/bin/python", "-c", "import libtorrent"
  end
end
