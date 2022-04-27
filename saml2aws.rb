require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.27.1'
  if OS.mac?
    url "https://github.com/Versent/saml2aws/releases/download/v#{version}/saml2aws_#{version}_darwin_amd64.tar.gz"
    sha256 'a71477db0bf8d26d2b7fa2d656c280906959863901f4361e6f92a3dab2e8c06d'
  elsif OS.linux?
    url "https://github.com/Versent/saml2aws/releases/download/v#{version}/saml2aws_#{version}_linux_amd64.tar.gz"
    sha256 'd4a58665b712a737e60215c2fb48a5dc18d9f7c35154babece7e4c5ab4574150'
  end

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
