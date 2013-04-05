class LibYaml < FPM::Cookery::Recipe
  description 'Lib Yaml for ruby 1.9'
  name 'libyaml'
  version '0.1.4'
  revision '1'
  homepage 'http://pyyaml.org/wiki/LibYAML'
  source 'http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz'
  sha256 '7bf81554ae5ab2d9b6977da398ea789722e0db75b86bffdaeb4e66d961de6a37'
  arch 'x86_64'
  section 'libs'

  build_depends 'rpmdevtools'

  def build
    configure :prefix => '/usr/local'
    make "jobs" => 4 
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
