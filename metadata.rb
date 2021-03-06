name             'consul'
maintainer       'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license          'Apache v2.0'
description      'Installs/Configures consul'
long_description 'Installs/Configures consul'
version          '0.2.3'

recipe 'consul', 'Installs and starts consul service.'
recipe 'consul::binary_install', 'Installs consul service from binary.'
recipe 'consul::source_install', 'Install consul service from source.'

%w(redhat centos).each do |name|
  supports name, '~> 6.5'
  supports name, '~> 5.10'
end

supports 'ubuntu', '= 12.04'
supports 'ubuntu', '= 14.04'

depends 'ark', '~> 0.8.0'
depends 'golang', '~> 1.3.0'

%w(yum-repoforge runit).each { |cb| depends cb }
