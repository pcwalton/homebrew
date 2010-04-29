require 'formula'

class ObjectiveCamlPcre <Formula
  @url='http://hg.ocaml.info/release/pcre-ocaml/archive/release-6.0.1.tar.gz'
  @homepage='http://ocaml.info/home/ocaml_sources.html'
  @md5='f448c103458d4c07f7d9d648f1c6b533'
  
  depends_on 'pcre'
  depends_on 'objective-caml'
  depends_on 'objective-caml-findlib'
  
  def install
    ENV.deparallelize
    system "make"
    system "mkdir -p #{prefix}/lib/ocaml/site-lib"
    system "make install OCAMLFIND_INSTFLAGS=\"-destdir #{prefix}/lib/ocaml/site-lib\""
  end

end
