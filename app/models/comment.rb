class Comment < ActiveRecord::Base
  belongs_to :article
  attr_accessible :comment, :commenter, :user_email
end
