class Reny < Formula
  include Language::Python::Virtualenv

  desc "Awesome python package reny"
  homepage "https://pypi.org/project/reny/"
  url "https://files.pythonhosted.org/packages/91/2b/d8754ab27842e1797ad3c6cb0e0893d766a4120743cfc12079de64f0f932/reny-1.0.9.tar.gz"
  sha256 "6af1bd8f687f971dd22c8c9646acc7bb1743f2872aa11b72dc6a50a802a2ac3a"
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
