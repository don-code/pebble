pebble Cookbook
===============
Installs and configures the [Pebble blogging engine](http://pebble.sf.net) into Tomcat.

Requirements
------------

### Platforms

This cookbook has been tested and is testable on CentOS 6.

### Cookbooks

* ark
* maven
* tomcat

Recipes
-------

### pebble::default

Installs Maven and Tomcat. Downloads Pebble from a SourceForge mirror and deploys it into Tomcat.
Also uses Maven to download JavaMail API libraries from Maven Central.

Attributes
----------

* `node['pebble']['dist']['bundle']` is the mirror URL of the Pebble distribution.
* `node['pebble']['dist']['checksum']` is the SHA256 checksum of the above distribution.
* `node['pebble']['dist']['version']` is the version string of the above Pebble distribution.
* `node['pebble']['expand_dir']` is the path in which to expand the Pebble distribution. The contained WAR will be symlinked into Tomcat.

Testing
-------

The cookbook provides the following Rake tasks for testing:

    rake default      # Run: Style (Ruby & Chef), ChefSpec (unit tests), Test Kitchen (integration tests)
    rake integration  # Run Test Kitchen integration tests
    rake style        # Run both Ruby & Chef style checks
    rake style:chef   # Lint Chef cookbooks
    rake style:ruby   # Run Ruby style checks
    rake unit         # Run ChefSpec unit tests

License
-------
GPL v3 - see the accompanying LICENSE file for details.
