#
# Cookbook Name:: pebble
# Recipe:: default
#
# Copyright (C) 2015 don-code (http://github.com/don-code)
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

include_recipe 'ark'
include_recipe 'maven'
include_recipe 'tomcat'

# Download the Pebble WAR
ark 'pebble' do
  action :put
  checksum node['pebble']['dist']['checksum']
  url node['pebble']['dist']['bundle']
  version node['pebble']['dist']['version']
end

# Let Tomcat write its home directory
directory node['tomcat']['home'] do
  owner node['tomcat']['user']
  group node['tomcat']['group']
  mode 0755
end

# Deploy Pebble into Tomcat
link "#{node['tomcat']['webapp_dir']}/pebble.war" do
  group node['tomcat']['group']
  owner node['tomcat']['user']
  to "/usr/local/pebble/pebble-#{node['pebble']['dist']['version']}.war"
end

# Install the JavaMail API to Tomcat's classpath
maven 'javax.mail' do
  dest node['tomcat']['lib_dir']
  groupId 'com.sun.mail'
  version '1.5.4'
end
