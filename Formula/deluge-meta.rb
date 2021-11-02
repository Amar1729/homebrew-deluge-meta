class DelugeMeta < Formula
  include Language::Python::Virtualenv

  desc "Meta package for Deluge 2.0 dependencies"
  homepage "https://deluge-torrent.org/"
  url "https://files.pythonhosted.org/packages/58/9c/a612e85487c055d88da0f975a81cabf5d04dfb87a2aace2ae5946115113f/deluge-2.0.3.tar.gz"
  sha256 "bd26950f417de2a5b26827d989935a30e770f880c22cb59ca69f781cdc9a14c9"
  license "GPL-3.0"
  revision 2

  bottle do
    root_url "https://github.com/Amar1729/homebrew-deluge-meta/releases/download/deluge-meta-2.0.3_2"
    rebuild 1
    sha256 cellar: :any, catalina: "e696f67e1b12182bde32100c315827f098d5c00ae4a9eabc8ca0b51ca9c25b32"
  end

  depends_on "rust" => :build
  depends_on "adwaita-icon-theme"
  depends_on "gettext"
  depends_on "gtk+3"
  depends_on "libffi"
  depends_on "libtorrent-rasterbar"
  depends_on "libxcb"
  depends_on "little-cms2"
  depends_on "openjpeg"
  depends_on "pygobject3"
  depends_on "python@3.9"
  depends_on "zlib"

  # manually added since Automat requires wheel (cmd bdist_wheel) to build
  resource "wheel" do
    url "https://files.pythonhosted.org/packages/4e/be/8139f127b4db2f79c8b117c80af56a3078cc4824b5b94250c7f81a70e03b/wheel-0.37.0.tar.gz"
    sha256 "e2ef7239991699e3355d54f8e968a21bb940a1dbf34a4d226741e64462516fad"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/ed/d6/3ebca4ca65157c12bd08a63e20ac0bdc21ac7f3694040711f9fd073c0ffb/attrs-21.2.0.tar.gz"
    sha256 "ef6aaac3ca6cd92904cdd0d83f629a15f18053ec84e6432106f7a4d04ae4f5fb"
  end

  resource "Automat" do
    url "https://files.pythonhosted.org/packages/80/c5/82c63bad570f4ef745cc5c2f0713c8eddcd07153b4bee7f72a8dc9f9384b/Automat-20.2.0.tar.gz"
    sha256 "7979803c74610e11ef0c0d68a2942b152df52da55336e0c9d58daf1831cbdf33"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/00/9e/92de7e1217ccc3d5f352ba21e52398372525765b2e0c4530e6eb2ba9282a/cffi-1.15.0.tar.gz"
    sha256 "920f0d66a896c2d99f0adbb391f990a84091179542c205fa53ce5787aff87954"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
    sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
  end

  resource "constantly" do
    url "https://files.pythonhosted.org/packages/95/f1/207a0a478c4bb34b1b49d5915e2db574cadc415c9ac3a7ef17e29b2e8951/constantly-15.1.0.tar.gz"
    sha256 "586372eb92059873e29eba4f9dec8381541b4d3834660707faf8ba59146dfc35"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/10/91/90b8d4cd611ac2aa526290ae4b4285aa5ea57ee191c63c2f3d04170d7683/cryptography-35.0.0.tar.gz"
    sha256 "9933f28f70d0517686bd7de36166dda42094eac49415459d9bdf5e7df3e0086d"
  end

  resource "deluge" do
    url "https://files.pythonhosted.org/packages/58/9c/a612e85487c055d88da0f975a81cabf5d04dfb87a2aace2ae5946115113f/deluge-2.0.3.tar.gz"
    sha256 "bd26950f417de2a5b26827d989935a30e770f880c22cb59ca69f781cdc9a14c9"
  end

  resource "hyperlink" do
    url "https://files.pythonhosted.org/packages/3a/51/1947bd81d75af87e3bb9e34593a4cf118115a8feb451ce7a69044ef1412e/hyperlink-21.0.0.tar.gz"
    sha256 "427af957daa58bc909471c6c40f74c5450fa123dd093fc53efd2e91d2705a56b"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "incremental" do
    url "https://files.pythonhosted.org/packages/4f/c5/430765c697afc217c8491785de321a21fa4d983dda14bcd82feb965b0593/incremental-21.3.0.tar.gz"
    sha256 "02f5de5aff48f6b9f665d99d48bfc7ec03b6e3943210de7cfc88856d755d6f57"
  end

  resource "Mako" do
    url "https://files.pythonhosted.org/packages/d1/42/ff293411e980debfc647be9306d89840c8b82ea24571b014f1a35b2ad80f/Mako-1.1.5.tar.gz"
    sha256 "169fa52af22a91900d852e937400e79f535496191c63712e3b9fda5a9bed6fc3"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz"
    sha256 "594c67807fb16238b30c44bdf74f36c02cdf22d1c8cda91ef8a0ed8dabf5620a"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/7d/2a/2fc11b54e2742db06297f7fa7f420a0e3069fdcf0e4b57dfec33f0b08622/Pillow-8.4.0.tar.gz"
    sha256 "b8e2f83c56e141920c39464b852de3719dfbfb6e3c99a2d8da0edf4fb33176ed"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/a4/db/fffec68299e6d7bad3d504147f9094830b704527a7fc098b721d38cc7fa7/pyasn1-0.4.8.tar.gz"
    sha256 "aef77c9fb94a3ac588e87841208bdec464471d9871bd5050a287cc9a475cd0ba"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/88/87/72eb9ccf8a58021c542de2588a867dbefc7556e14b2866d1e40e9e2b587e/pyasn1-modules-0.2.8.tar.gz"
    sha256 "905f84c712230b2c592c19470d3ca8d552de726050d1d1716282a1f6146be65e"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
    sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
  end

  resource "pyOpenSSL" do
    url "https://files.pythonhosted.org/packages/54/9a/2a43c5dbf4507f86f7c43cba4195d5e25a81c988fd7b0ea779dfc9c6973f/pyOpenSSL-21.0.0.tar.gz"
    sha256 "5e2d8c5e46d0d865ae933bef5230090bdaf5506281e9eec60fa250ee80600cb3"
  end

  resource "pyxdg" do
    url "https://files.pythonhosted.org/packages/6f/2e/2251b5ae2f003d865beef79c8fcd517e907ed6a69f58c32403cec3eba9b2/pyxdg-0.27.tar.gz"
    sha256 "80bd93aae5ed82435f20462ea0208fb198d8eec262e831ee06ce9ddb6b91c5a5"
  end

  resource "rencode" do
    url "https://files.pythonhosted.org/packages/3a/fb/3c03dbe4438dd596e1378b5299990b81041739658a76e0f4a301eded67f4/rencode-1.0.6.tar.gz"
    sha256 "2586435c4ea7d45f74e26765ad33d75309de7cf47c4d762e8efabd39905c0718"
  end

  resource "service-identity" do
    url "https://files.pythonhosted.org/packages/09/2e/26ade69944773df4748c19d3053e025b282f48de02aad84906d34a29d28b/service-identity-21.1.0.tar.gz"
    sha256 "6e6c6086ca271dc11b033d17c3a8bea9f24ebff920c587da090afc9519419d34"
  end

  resource "setproctitle" do
    url "https://files.pythonhosted.org/packages/a1/7f/a1d4f4c7b66f0fc02f35dc5c85f45a8b4e4a7988357a29e61c14e725ef86/setproctitle-1.2.2.tar.gz"
    sha256 "7dfb472c8852403d34007e01d6e3c68c57eb66433fb8a5c77b13b89a160d97df"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "Twisted" do
    url "https://files.pythonhosted.org/packages/b2/46/ee13d2d8dd4d380132199d5b3526e01103fd9a3c43b613718cd01e179987/Twisted-21.7.0.tar.gz"
    sha256 "2cd652542463277378b0d349f47c62f20d9306e57d1247baabd6d1d38a109006"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/ed/12/c5079a15cf5c01d7f4252b473b00f7e68ee711be605b9f001528f0298b98/typing_extensions-3.10.0.2.tar.gz"
    sha256 "49f75d16ff11f1cd258e1b988ccff82a3ca5570217d7ad8c5f48205dd99a677e"
  end

  resource "zope.interface" do
    url "https://files.pythonhosted.org/packages/ae/58/e0877f58daa69126a5fb325d6df92b20b77431cd281e189c5ec42b722f58/zope.interface-5.4.0.tar.gz"
    sha256 "5dba5f530fec3f0988d83b78cc591b58c0b6eb8431a85edd1569a0539a8a5a0e"
  end

  def install
    virtualenv_install_with_resources

    %w[deluge deluge-console deluge-gtk deluge-web deluged].each do |cmd|
      (bin/cmd).write_env_script(libexec/"bin/#{cmd}", PYTHONPATH: ENV["PYTHONPATH"])
    end

    man1.install Dir["docs/man/*.1"]
  end

  test do
    # this is not a "functional" test, but its a little tough to do one for a torrent client
    assert_match "deluged #{version}", shell_output("#{bin}/deluged --version")
  end
end
