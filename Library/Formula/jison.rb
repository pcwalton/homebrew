require 'formula'

class Jison <Formula
  url 'git://github.com/zaach/jison.git'
  version '17bc7063b6cb9cb90aec8861023b3d559eeef1d2'
  homepage 'http://jison.org/'
  md5 ''

  def install
    # just unpack it
    system "mkdir -p #{prefix}/share/jison"
    system "cp -pr * #{prefix}/share/jison"
  end
end
