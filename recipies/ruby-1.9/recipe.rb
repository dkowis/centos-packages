class Ruby193 < FPM::Cookery::Recipe
  description 'An interpreter of object-oriented scripting language Ruby'
  name 'ruby1.9.3'
  version '1:1.9.3.392'
  revision '1'
  homepage 'http://www.ruby-lang.org/'
  source 'http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p392.tar.gz'
  sha256 '8861ddadb2cd30fb30e42122741130d12f6543c3d62d05906cd41076db70975f'
  arch 'x86_64'
  section 'interpreters'

  build_depends 'rpmdevtools', 'autoconf', 'compat-readline5-devel', 'bison',
                'zlib-devel', 'openssl-devel', 'libyaml'
  depends 'compat-readline5', 'zlib', 'openssl', 'libyaml'

  def build
    configure :prefix => '/usr/local', 'disable-install-doc' => true
    make "jobs" => 4 
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
