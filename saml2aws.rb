require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  version '2.26.2'
  if OS.mac?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.26.2/saml2aws_2.26.2_darwin_amd64.tar.gz'
    sha256 'f8ddb6b2f954af0e8ef16425220f6f7aded18bd58148d7e233927df9764ec3af'
  elsif OS.linux?
    url 'https://github.com/Versent/saml2aws/releases/download/v2.26.2/saml2aws_2.26.2_linux_amd64.tar.gz'
    sha256 'd0f719fce1ba53a8e9f429fa62ed41a110f5db336a65aa001d9b475914dbd9c9'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
