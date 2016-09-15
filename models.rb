class User < ActiveRecord::Base
	has_many :posts
	has_many :follows

	def full_name
		if !fname.nil? && !lname.nil?
			fname + " " + lname
		elsif !fname.nil?
			fname
		elsif !lname.nil?
			lname
		end
	end
end

class Post < ActiveRecord::Base
	belongs_to :user
end

class Follow < ActiveRecord::Base
	belongs_to :user
end