require 'formula'

class ClassicRuby <Formula
  url 'ftp://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p174.tar.gz'
  homepage 'http://www.ruby-lang.org/en/'
  md5 '18dcdfef761a745ac7da45b61776afa5'
  version '1.8.7'

  depends_on 'readline'
  skip_clean 'bin/ruby'
  
  def install
    ENV.gcc_4_2
    system "./configure", "--prefix=#{prefix}",
                          "--disable-debug",
                          "--disable-dependency-tracking",
                          "--enable-shared"
    system "make"
    system "make install"
  end
end
