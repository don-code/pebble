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

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme

# TODO: merge these back into the default test when LDAP works properly
describe 'pebble::default' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  it 'installs Pebble' do
    # Requires https://github.com/burtlo/ark/pull/61
    # expect(chef_run).to put_ark('pebble')

    expect(chef_run).to create_link('/var/lib/tomcat6/webapps/pebble.war')
    expect(chef_run).to create_directory('/usr/share/tomcat6')

    # Requires https://github.com/chef-cookbooks/maven/pull/52
    # expect(chef_run).to put_maven_artifact('javax.mail')
  end
end
