source :rubygems

gem 'rails', "~> 3.0.0"

# authenication
gem 'devise'
# deployment
gem 'capistrano'
gem 'capistrano-ext'
# database
gem 'mysql2'
# memcached
gem 'dalli'
# development server
gem 'thin'
# fast date/time libraries
gem 'home_run'
# background processing
gem 'resque'

# admin scaffolding
gem 'admin_data'
gem 'will_paginate', :git => 'git://github.com/mislav/will_paginate.git', :branch => 'rails3'
# development profiling and debugging
gem 'rack-bug', :git => 'git://github.com/brynary/rack-bug.git', :branch => 'rails3', :require => 'rack/bug'

group :development, :test do
  gem 'web-app-theme'
end

group :test do
  gem 'factory_girl_rails'
  gem "rspec-rails"
  gem "steak", '>= 1.0.0.beta.2'
  gem 'vcr'
  gem "capybara"
  gem "launchy"
  gem 'mocha'
  gem 'less'
end