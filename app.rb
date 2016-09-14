require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'bundler/setup'
require 'sinatra/flash'
enable :sessions
set :database, "sqlite3:micropost.sqlite3"

get '/' do
	
end

get '/sign-up' do
	
end

