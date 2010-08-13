= Foundation

Foundation is my take on a solid starting point for Rails3 applications being built today.  It is also an excellent science fiction series by Isaac Asimov.

= Features

 * Core: Rails 3, Ruby 1.9.2, bundler 1.0.0
 * Functionality:
    - devise for authentication
    - admin_data for auto-scaffolding (TODO)
 * Testing
    - Steak for features (Cucumber is too complex IMO)
    - Capybara for full-stack acceptance testing
    - factory_girl for data factories
    - Mocha for general mocking
    - VCR for HTTP mocking
 * Utilities
    - LessCSS for CSS maintenance
    - smurf for JS/CSS minification
    - famfamfam icon set
    - capistrano with multistage support

= Requirements

== RVM

    gem install rvm
    rvm-install
    rvm reload

== Ruby 1.9.2

    rvm install 1.9.2
    rvm use 1.9.2@foundation

= Installation

    gem install rails --pre
    bundle install
