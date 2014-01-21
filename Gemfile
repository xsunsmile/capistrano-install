source "http://rubygems.org"

gem "capistrano", "~> 3.0.0"
gem "capistrano-bundler"
gem 'capistrano-rvm'
gem 'rugged', git: 'git://github.com/libgit2/rugged.git', branch: 'development', submodules: true

# Add dependencies to develop your gem here.
# Include everything needed to run rake, tests, features, etc.
group :development do
  gem "shoulda", "~> 3.5.0"
  gem "rdoc", "~> 3.12"
  gem "bundler", "~> 1.0"
  gem "jeweler", "~> 2.0.0"
  gem "simplecov", "~> 0.8.2", :require => false
end
