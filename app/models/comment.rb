class Comment < ActiveRecord::Base
  belongs_to :article

  attr_accessible :comment, :commenter, :user_email

  validates_presence_of :comment, :commenter
end
