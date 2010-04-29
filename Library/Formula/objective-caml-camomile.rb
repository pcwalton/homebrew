require 'formula'

class ObjectiveCamlCamomile <Formula
  url 'http://prdownloads.sourceforge.net/camomile/camomile-0.7.2.tar.bz2'
  homepage 'http://camomile.sourceforge.net/'
  md5 '288e17838fedc52aacb733952b25d5dd'

  depends_on 'objective-caml'
  depends_on 'objective-caml-findlib'

  def patches
    # installs into the cellar
    DATA
  end

  def install
    system "./configure", "--prefix=#{prefix}"
    ENV['MAKEFLAGS']=''
    system "make"
    ENV['OCAMLFIND_DESTDIR'] = "#{prefix}/lib/ocaml/site-lib"
    system "mkdir -p #{prefix}/lib/ocaml/site-lib"
    system "make install"
  end
end
