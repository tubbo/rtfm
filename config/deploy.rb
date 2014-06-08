# config valid only for Capistrano 3.1
lock '3.2.0'

set :application, 'rtfm'
github_username = ENV['GITHUB_USERNAME']
github_password = ENV['GITHUB_PASSWORD']
set :repo_url, "https://#{github_username}:#{github_password}@github.com/telvue/rtfm.git"

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/srv/rtfm'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{log vendor/bundle public}

# Default value for default_env is {}
set :default_env, { path: "#{shared_path}/vendor/bin:/opt/rubies/ruby-2.1.2/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :bundle_path, -> { shared_path.join 'vendor/bundle' }
set :bundle_binstubs, -> { shared_path.join 'vendor/bin' }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
