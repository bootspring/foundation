source :rubygems

gem 'rails', "~> 3.0.0"

# authenication
gem 'devise'
# database
gem 'mysql2'
# memcached
gem 'dalli'
# fast date/time libraries
gem 'home_run'
# background processing
gem 'resque'
gem 'less'

# admin scaffolding
group :development do
  # deployment
  gem 'capistrano'
  gem 'capistrano-ext'

  gem 'admin_data'
  gem 'will_paginate', :git => 'git://github.com/mislav/will_paginate.git', :branch => 'rails3'
  # development profiling and debugging
  gem 'rack-bug', :git => 'git://github.com/brynary/rack-bug.git', :branch => 'rails3', :require => 'rack/bug'
end

group :development, :test do
  gem 'web-app-theme'
  gem "steak", '>= 1.0.0.beta.2'
  gem "rspec-rails"
end

group :test do
  gem "capybara"
  gem 'factory_girl_rails'
  # gem 'vcr'
  # gem "launchy"
  # gem 'mocha'
  # gem 'less'
end