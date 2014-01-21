# Load DSL and Setup Up Stages
$:.unshift File.join(File.dirname(__FILE__), 'lib')

set :stages, %w(production staging)
set :stage, 'production'

require 'capistrano/setup_auto'
require 'capistrano/deploy'
require 'capistrano/rvm'
require 'capistrano/bundler'

after 'production', 'rvm:hook'
after 'production', 'rvm:check'

set :rvm_ruby_version, 'ruby-2.0.0-p247@capistrano-install'
role :app, %w{ localhost }

# Includes tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails/tree/master/assets
#   https://github.com/capistrano/rails/tree/master/migrations
#
# require 'capistrano/rvm'
# require 'capistrano/rbenv'
# require 'capistrano/chruby'
# require 'capistrano/bundler'
# require 'capistrano/rails/assets'
# require 'capistrano/rails/migrations'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }

namespace :deploy do
  desc 'Restart application'
  task :restart do
	   puts "restart"
  end
end
