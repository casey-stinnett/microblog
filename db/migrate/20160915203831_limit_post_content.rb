class LimitPostContent < ActiveRecord::Migration
  def change
  	change_column :posts, :content, :string, :limit => 150
  end
end
