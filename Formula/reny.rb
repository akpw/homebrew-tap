class Reny < Formula
  include Language::Python::Virtualenv

  desc "Filesystem visualizer, batch renamer, and directory organizer"
  homepage "https://github.com/akpw/reny"
  url "https://files.pythonhosted.org/packages/7a/b7/53e4cb7106866563ac97fb6b009482d6ed2660ddc065f49450e66b35364d/reny-1.1.0.tar.gz"
  sha256 "f72e6ced8bb2e545a0e4907a017f48682395f473c5076531e2243a81524534e2"
  license "GPL-2.0-or-later"

  depends_on "python@3.14"

  resource "pygtrie" do
    url "https://files.pythonhosted.org/packages/b9/13/55deec25bf09383216fa7f1dfcdbfca40a04aa00b6d15a5cbf25af8fce5f/pygtrie-2.5.0.tar.gz"
    sha256 "203514ad826eb403dab1d2e2ddd034e0d1534bbe4dbe0213bb0593f66beba4e2"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"reny", "--help"
  end
end
