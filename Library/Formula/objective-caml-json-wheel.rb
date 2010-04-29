require 'formula'

class ObjectiveCamlJsonWheel <Formula
  url 'http://martin.jambon.free.fr/json-wheel-1.0.6.tar.gz'
  homepage 'http://martin.jambon.free.fr/json-wheel.html'
  md5 '7c2fcface88bc94d1cc8e83309d38994'
  
  depends_on 'objective-caml'
  depends_on 'objective-caml-findlib'
  depends_on 'objective-caml-netclient'
  
  def install
    ENV.deparallelize
    system "make"
    ENV['OCAMLFIND_DESTDIR'] = "#{prefix}/lib/ocaml/site-lib"
    system "mkdir -p #{prefix}/lib/ocaml/site-lib"
    system "make install"
  end

end
