class Reny < Formula
  include Language::Python::Virtualenv

  desc "Filesystem visualizer, batch renamer, and directory organizer"
  homepage "https://github.com/akpw/reny"
  url "https://files.pythonhosted.org/packages/3c/f2/a2107702418d62b12c9411c6157aa1ccdcbcd199dbb5a87040736cdeb55e/reny-1.1.1.tar.gz"
  sha256 "53fa3a9aa3ef3abb8b2a308d316140ee3b61ec641ad4f6a0a185800a8e525d2d"
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
