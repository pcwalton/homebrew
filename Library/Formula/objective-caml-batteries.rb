require 'formula'

class ObjectiveCamlBatteries <Formula
  url 'http://forge.ocamlcore.org/frs/download.php/366/batteries-1.1.0.tar.gz'
  homepage 'http://batteries.forge.ocamlcore.org/'
  md5 '9daa7dad88d4f9a62c91ce89423de540'

  depends_on 'objective-caml'
  depends_on 'objective-caml-camomile'
  depends_on 'objective-caml-findlib'
  depends_on 'omake'

  def install
    system "omake"
    ENV['DESTDIR']="#{prefix}/lib/ocaml/site-lib"
    system "mkdir -p #{prefix}/lib/ocaml/site-lib"
    system "omake install"
  end
end
