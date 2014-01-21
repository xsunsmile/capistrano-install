set :application, 'capistrano'
set :scm, :git
set :branch, :master
set :repo_url, 'git@github.com:capistrano/capistrano.git'
set :deploy_to, "/tmp/#{fetch :application}"
set :tmp_dir, "/tmp"

set :default_env, {}
set :keep_releases, 1
set :format, :pretty
set :log_level, :info
set :pty, true
