require 'formula'

class ObjectiveCamlNetclient <Formula
  @url='http://download.camlcity.org/download/ocamlnet-2.2.9.tar.gz'
  @homepage='http://projects.camlcity.org/projects/ocamlnet.html'
  @md5='3655e3be3bb2806e0a1f48bb7ce16fb3'
  
  depends_on 'objective-caml'
  depends_on 'objective-caml-findlib'
  depends_on 'objective-caml-pcre'
  
  def install
    ENV.deparallelize
    system "./configure"
    system "make all"
    system "make opt"
    ENV['OCAMLFIND_DESTDIR'] = "#{prefix}/lib/ocaml/site-lib"
    system "mkdir -p #{prefix}/lib/ocaml/site-lib"
    system "make install"
  end

end
