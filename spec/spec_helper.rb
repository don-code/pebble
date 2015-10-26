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

require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.platform = 'centos'
  config.version = '6.6'
end

# Do a spec code coverage report at the end of the spec run
at_exit { ChefSpec::Coverage.report! }
