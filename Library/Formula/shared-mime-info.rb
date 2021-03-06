require 'formula'

class SharedMimeInfo <Formula
  url 'http://freedesktop.org/~hadess/shared-mime-info-0.70.tar.bz2'
  homepage 'http://www.freedesktop.org/wiki/Software/shared-mime-info'
  md5 '9032d98f14b8e13e0fea4bf45ca23401'
 
  depends_on 'intltool'
  depends_on 'gettext'
  depends_on 'pkg-config'
  depends_on 'glib'

  def install
    # Disable the post-install update-mimedb due to crash
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-update-mimedb"
    system "make install"
  end
end
