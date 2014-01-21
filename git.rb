require 'rubygems'
require 'rugged'

repo = Rugged::Repository.discover(File.dirname(__FILE__))
ref = repo.head
puts ref.name
puts repo.config["remote.origin.url"]

# repo.config.each_pair do |k,v|
# 	puts "#{k} => #{v}"
# end
