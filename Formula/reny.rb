class Reny < Formula
  include Language::Python::Virtualenv

  desc "Awesome python package reny"
  homepage "https://pypi.org/project/reny/"
  url "https://files.pythonhosted.org/packages/73/a1/a7e539c0945adb3aa53c56dc4bad220e2b5191e9b66c8be78b4579a855dc/reny-1.0.10.tar.gz"
  sha256 "fc021ae72b342e1ae199ae8e5cf7dd31149f6b70af520561c6b34bb4395f6cee"
  license "MIT" # Update if needed

  depends_on "python@3.14"

  resource "pygtrie" do
    url "https://files.pythonhosted.org/packages/b9/13/55deec25bf09383216fa7f1dfcdbfca40a04aa00b6d15a5cbf25af8fce5f/pygtrie-2.5.0.tar.gz"
    sha256 "203514ad826eb403dab1d2e2ddd034e0d1534bbe4dbe0213bb0593f66beba4e2"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/reny", "--help"
  end
end
