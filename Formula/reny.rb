class Reny < Formula
  include Language::Python::Virtualenv

  desc "Awesome python package reny"
  homepage "https://pypi.org/project/reny/"
  url "https://files.pythonhosted.org/packages/7c/d7/43e29dec07cab465ddea697c086ef7d8a8500eb5670f43c374d9a124e129/reny-1.0.8.tar.gz"
  sha256 "b0a16e001ade9d2c6b762639ecb7d536e77b8b254fad01d9ff919b0a89badde8"
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
