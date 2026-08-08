class Reny < Formula
  include Language::Python::Virtualenv

  desc "Awesome python package reny"
  homepage "https://pypi.org/project/reny/"
  url "https://files.pythonhosted.org/packages/source/r/reny/reny-1.0.16.tar.gz"
  sha256 "c56a724ef20bdf48daefb8dab574646fb0143d731db956c2d88a390b3dea782c"
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
