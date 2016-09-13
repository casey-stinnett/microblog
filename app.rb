require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'bundler/setup'
require 'sinatra/flash'
enable :sessions
set :database, "sqlite3:flash.sqlite3"