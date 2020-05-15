require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.26.1'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.26.1/saml2aws_2.26.1_darwin_amd64.tar.gz'
    sha256 'd48ab54726d660fd2411ac7b7a0798b34030ccd5c72b16a26c3ec0297a889329'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.26.1/saml2aws_2.26.1_linux_amd64.tar.gz'
    sha256 'eee8240d48375ee27a84edc604166c2b2c4ad66b5a3fe9979cc35812c841072d'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
