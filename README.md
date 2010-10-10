Foundation
===============

Foundation is our take on a solid starting point for Rails 3 applications being built today.  It is also an excellent science fiction series by Isaac Asimov.

![Foundation](http://www.nowakfilms.com/joomla15/images/stories/asimov_isaac_foundation_av.jpg)

Features
===============

 * Core: Rails 3, Ruby 1.9.2, bundler 1.0
 * Functionality:
    - devise for authentication
    - admin_data for auto-scaffolding
    - jQuery 1.4.2 via Google's CDN
    - HTML5 boilerplate
    - Blueprint CSS framework
    - dalli for caching
    - mysql2 database adapter
    - resque for background message processing
 * Testing
    - RSpec + Steak for feature testing (Cucumber is too complex IMO)
    - Capybara for full-stack acceptance testing
    - factory_girl for data factories
    - Mocha for general mocking
    - VCR for HTTP mocking
 * Utilities
    - LessCSS for CSS maintenance
    - smurf for JS/CSS minification
    - capistrano with multistage support for easy deployment
    - rack-bug for profiling/debugging


Requirements
===============

RVM
-----------------

    gem install rvm
    rvm-install
    rvm reload

Ruby 1.9.2
-----------------

    rvm install 1.9.2
    rvm use 1.9.2@foundation --create

Installation
-----------------

    gem install bundler
    bundle install
    rake db:create:all
    rake db:migrate

Configuration
-----------------

You will need to edit config/database.yml, config/deploy and several values in config/environment/production.rb.


Thanks
================

Foundation is code developed for my company, [Bootspring](http://bootspring.com), to help us bootstrap clients quickly.  Please [contact us](mailto:info@bootspring.com) if we can help you with your Ruby development or infrastructure problems.


Author
==============

Mike Perham, mperham@gmail.com, [mikeperham.com](http://mikeperham.com), [@mperham](http://twitter.com/mperham)