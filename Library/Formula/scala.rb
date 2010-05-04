require 'formula'

class Scala <Formula
  homepage 'http://www.scala-lang.org/'
  url "http://www.scala-lang.org/downloads/distrib/files/scala-2.8.0.Beta1-prerelease.tgz"
  version '2.8.0.b1'
  md5 '3c139a36abf270be26103a5ebdd742b6'

  def install
    man1.install Dir['man/man1/*']
    FileUtils.rm_f Dir["bin/*.bat"]
    prefix.install Dir['*']
  end
end
