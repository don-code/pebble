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

require 'spec_helper'

describe port(8080) do
  it { should be_listening }
end

describe service('tomcat6') do
  it { should be_enabled }
  it { should be_running }
end

describe command('curl http://localhost:8080/pebble/') do
  its(:stdout) { should contain('My blog') }
end
