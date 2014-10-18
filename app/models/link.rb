class Link < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	has_many :votes, :as => :votable
	belongs_to :language


end
