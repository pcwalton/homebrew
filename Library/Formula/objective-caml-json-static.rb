require 'formula'

class ObjectiveCamlJsonStatic <Formula
  @url='http://martin.jambon.free.fr/json-static-0.9.8.tar.gz'
  @homepage='http://martin.jambon.free.fr/json-static.html'
  @md5='d45e22d4594ca3d7642243f2e275ac29'
  
  depends_on 'objective-caml'
  depends_on 'objective-caml-findlib'
  depends_on 'objective-caml-json-wheel'
   
  def install
    ENV.deparallelize
    system "make"
    system "make install"
  end

end
