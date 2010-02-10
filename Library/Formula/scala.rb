require 'formula'

class Scala <Formula
  homepage 'http://www.scala-lang.org/'
  url "http://www.scala-lang.org/downloads/distrib/files/scala-2.8.0.Beta1-prerelease.tgz"
  version '2.8.0.b1'
  md5 '3c139a36abf270be26103a5ebdd742b6'

  def install
    prefix.install Dir['*']
    FileUtils.rm_f Dir["#{bin}/*.bat"]
    FileUtils.mv prefix+'man', share
  end
end
