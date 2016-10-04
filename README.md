# pagespeed

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with pagespeed](#setup)
    * [What pagespeed affects](#what-pagespeed-affects)
1. [Usage in puppet-code](#usage-puppet)
1. [Usage in hiera](#usage-hiera)

## Description

The Pagespeed-Module configuration, that the puppetlabs/apache-module
supports, expects, that the local package management knows about 
the "pagespeed-stable" package. This module installs the needed 
repositories, so this can be achieved.

## Setup

### What pagespeed affects 

#### Debian/Ubuntu

The module installs the Google GPG keys, the needed APT source and runs
an apt-get update.

## Usage - Puppet

Simply declare the class to use the module:

    class { 'pagespeed': }

## Usage - Hiera

Add the "pagespeed"-class to the list of classes you declare using
hiera_include.