class Reny < Formula
  include Language::Python::Virtualenv

  desc "Awesome python package reny"
  homepage "https://pypi.org/project/reny/"
  url "https://files.pythonhosted.org/packages/d2/ba/d5d9f2c52e77295d373e91d0fc5062d18954f972227d47a60883efced158/reny-1.0.11.tar.gz"
  sha256 "5aa35ac0bc0111199b5d02aaf2c34ed85d3d67938b3a92820c8072df7b334000"
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
