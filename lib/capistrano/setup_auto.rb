include Capistrano::DSL

namespace :load do
  task :defaults do
    load File.expand_path(File.join(File.dirname(__FILE__), 'defaults.rb'))
  end
end

fetch(:stages).each do |stage|
  puts "define #{stage} task"
  Rake::Task.define_task(stage) do
		invoke 'load:defaults'
    set(:stage, stage.to_sym)
    load "capistrano/#{fetch(:scm)}.rb"
    configure_backend
  end
end

require 'capistrano/dotfile'
