# This module is distributed under the GNU Affero General Public License:
# 
# Pear module for puppet
# Copyright (C) 2009 Sarava Group
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

class pear {
  # TODO:
  # - http://www.mit.edu/~marthag/puppet/pear.rb
  # - pecl install uploadprogress
  # - file /etc/php5/apache2/conf.d/uploadprogress.ini with content
  #   extension=uploadprogress.so
  
  # Pear
  package { "php-pear":
      ensure  => installed,
      require => Package["php5-dev"],
  }

  # Provides "phpize" command for pear
  package { "php5-dev":
      ensure => installed,
  }
}
