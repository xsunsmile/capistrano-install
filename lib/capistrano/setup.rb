include Capistrano::DSL

fetch(:stages).each do |stage|
  Rake::Task.define_task(stage) do
    set(:stage, stage.to_sym)
    load "capistrano/#{fetch(:scm)}.rb"
    configure_backend
  end
end

require 'capistrano/dotfile'
