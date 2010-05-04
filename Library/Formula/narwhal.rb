require 'formula'

class Narwhal <Formula
  url 'git://github.com/tlrobinson/narwhal.git'
  version 'HEAD'
  homepage 'http://narwhaljs.org/'
  md5 ''

  def install
    # just unpack it
    system "cp -pr * #{prefix}/"
  end
end
