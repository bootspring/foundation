Foundation
===============

Foundation is my take on a solid starting point for Rails3 applications being built today.  It is also an excellent science fiction series by Isaac Asimov.

Features
===============

 * Core: Rails 3, Ruby 1.9.2, bundler 1.0.0
 * Functionality:
    - devise for authentication
    - admin_data for auto-scaffolding (TODO)
    - jQuery via Google's CDN
    - HTML5 boilerplate
 * Testing
    - RSpec + Steak for feature testing (Cucumber is too complex)
    - Capybara for full-stack acceptance testing
    - factory_girl for data factories
    - Mocha for general mocking
    - VCR for HTTP mocking
 * Utilities
    - LessCSS for CSS maintenance
    - smurf for JS/CSS minification
    - capistrano with multistage support
    - Rails Footnotes for profiling/debugging


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

    gem install rails --pre
    bundle install


Thanks
================

Foundation is code developed for my company, [Bootspring](http://bootspring.com), to help us bootstrap clients quickly.


Author
==============

Mike Perham, mperham@gmail.com, [mikeperham.com](http://mikeperham.com), [@mperham](http://twitter.com/mperham)