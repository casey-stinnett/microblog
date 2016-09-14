class CreateTables < ActiveRecord::Migration
  def change
  	create_table :users do |u|
  		u.string :fname
  		u.string :lname
  		u.string :email
  		u.string :password
  	end

  	create_table :posts do |p|
  		p.integer :user_id
  		p.string :content
  		p.datetime :created
  	end

  	create_table :follows do |f|
  		f.integer :user_id
  		f.integer :followed_id
  	end
  end
end
