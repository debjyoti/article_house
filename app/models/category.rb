class Category < ActiveRecord::Base
  belongs_to :article
  attr_accessible :name
end
