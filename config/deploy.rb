set :default_stage, "staging"
require 'capistrano/ext/multistage'
require 'bundler/capistrano'

raise ArgumentError, "Please update config/deploy.rb with your app info"
set :application, "yourapp"
set :repository,  "git@github.com:yourname/yourrepo.git"
set :user, 'root'

set :scm, :git
set :ssh_options, { :forward_agent => true }

namespace :bundler do
  task :create_symlink, :roles => :app do
    shared_dir = File.join(shared_path, 'bundle')
    release_dir = File.join(current_release, '.bundle')
    run("mkdir -p #{shared_dir} && ln -s #{shared_dir} #{release_dir}")
  end

  task :bundle_new_release, :roles => :app do
    bundler.create_symlink
    run "cd #{release_path} && bundle install --without test"
  end
end

after 'deploy:update_code', 'bundler:bundle_new_release'

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end