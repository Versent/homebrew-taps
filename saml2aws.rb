require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.30.0'
  if OS.mac?
    url "https://github.com/Versent/saml2aws/releases/download/v#{version}/saml2aws_#{version}_darwin_amd64.tar.gz"
    sha256 '5689ca1082ba71a6eb20e078c62b61f44a991f3ec5494b3997ef5bac538f65c2'
  elsif OS.linux?
    url "https://github.com/Versent/saml2aws/releases/download/v#{version}/saml2aws_#{version}_linux_amd64.tar.gz"
    sha256 'fad3c2302c3396f609ade0d343d297fb7a672b8609bb359d441d2b4258c41794'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
