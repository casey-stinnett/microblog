require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'bundler/setup'
require 'sinatra/flash'
enable :sessions
set :database, "sqlite3:micropost.sqlite3"

get '/' do
	erb :feed
end

get '/sign-up' do
	erb :'sign-up'
end

post '/sign-up' do
	@user = User.create(params)
	if @user
		session[:user_id] = @user.id
	end
	redirect '/'
end

post '/sign-in' do

end

post '/sign-out' do

end

get '/profile' do

end

get '/account-deleted' do

end

get '/feed' do

end