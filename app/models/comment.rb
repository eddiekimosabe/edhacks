class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :link
	has_many :votes, :as => :votable

end
