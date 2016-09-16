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
	user = User.where(email: params[:email]).first
	if user && User.where(password: params[:password])
		set_user user.id
	else
		flash[:notice] = "Either your email or your password is incorrect."
	end
	redirect '/'
end

get '/sign-out' do
	session[:user_id] = nil
	redirect '/'
end

get '/profile' do
	@user = current_user
	erb :profile
end

post '/profile' do
	@user = current_user
	params.each do |k,v| 
		@user[k] = v
	end
	@user.save
	redirect '/profile'
end

post '/delete-account' do
	user = current_user
	user.destroy
	session[:user_id] = nil
	redirect '/'
end

post '/post' do
	post = Post.create(user_id: session[:user_id], content: params[:content], created: Time.now);
	redirect '/'
end

def current_user
	user_id = session[:user_id]
	if user_id
		@current_user = User.find(user_id)		
	end
end

def curr_user_id
	user_id = session[:user_id]
	if user_id
		@id = user_id
	end
end

def set_user(id)
	session[:user_id] = id
end