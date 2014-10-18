class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :links
  has_many :comments
  has_many :votes

  def already_voted_this?(context, context_type)
      return self.votes.where(voteable_type: context_type, voteable_id: context.id).first != nil
  end

end
