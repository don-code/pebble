#
# Cookbook Name:: pebble
# Attributes:: default
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

default['pebble']['dist']['bundle'] =
  'http://superb-dca2.dl.sourceforge.net/project/pebble/pebble/2.6.4/pebble-2.6.4.zip'
default['pebble']['dist']['checksum'] =
  'a189d1ddba24664f5fc2941956990cc546086054e91594edb217dcece681b4ea'
default['pebble']['dist']['version'] = '2.6.4'

default['pebble']['expand_dir'] = '/opt/pebble'
