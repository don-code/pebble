name 'pebble'
maintainer 'don-code'
license 'GPL v3'
description 'Installs the Pebble blogging engine into Tomcat'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

%w(centos redhat).each do |os|
  supports os
end

depends 'ark', '0.9.0'
depends 'maven', '1.3.1'
depends 'tomcat', '0.17.3'
