require 'bundler/setup'
Bundler.require :default, :assets

require './app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/css'
  environment.append_path 'assets/js'
  environment.append_path 'assets/components' 
  run environment
end

map '/' do
  run Sinatra::Application
end
