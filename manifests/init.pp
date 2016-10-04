# Class: pagespeed
# ===========================
#
# Installs google repository for the mod_pagespeed module as needed by
# Apache::Mod::Pagespeed.
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class pagespeed {

  case $osfamily {

    'Debian': {

      apt::source { 'mod-pagespeed':
        comment  => 'Google Pagespeed repository',
        location => 'http://dl.google.com/linux/mod-pagespeed/deb/',
        release => 'stable',
        repos => 'main',
        key => {
          'id' => "7fac5991",
          'content' => template('pagespeed/googlekey.debian.erb')
        }
      }

      Apt::Source['mod-pagespeed'] ~> Exec['apt_update'] -> Class['apache::mod::pagespeed']

    }

  }

}
