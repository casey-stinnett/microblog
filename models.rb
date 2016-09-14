class User < ActiveRecord::Base
	has_many :posts
	has_many :follows
end

class Post < ActiveRecord::Base
	belongs_to :user
end

class Follow < ActiveRecord::Base
	belongs_to :user
end