# encoding: utf-8

require 'bundler'
Bundler.require

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'sqlite://./db/development.db')
DataMapper.finalize.auto_upgrade!

before do
  @site_title = 'Hi'
end

get '/' do
  @page_title = 'Home'
  slim :index
end
