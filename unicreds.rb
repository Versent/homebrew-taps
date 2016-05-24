require 'formula'

class Unicreds < Formula
  homepage 'https://github.com/versent/unicreds'
  version '1.3.0'
  url "https://github.com/Versent/unicreds/releases/download/v#{version}/unicreds_#{version}_darwin_x86_64.tgz"
  sha256 'b1ed81abfb63ae480d702c68c65550a425b5e775ac111bf2f3df5f7fc9198ad9'

  depends_on :arch => :x86_64

  def install
    bin.install 'unicreds'
  end

  test do
    system "#{bin}/unicreds"
  end
end
