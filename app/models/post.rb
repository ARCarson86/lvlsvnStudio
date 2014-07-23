class Post < ActiveRecord::Base
	belongs_to :users
	has_many :comments, :as => :commentable
end