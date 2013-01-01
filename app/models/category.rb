class Category < ActiveRecord::Base
  attr_accessible :name, :subcategories_attributes
  belongs_to :article
  has_many :subcategories


  accepts_nested_attributes_for :subcategories, :allow_destroy => :true,
    :reject_if => lambda { |attrs| attrs.all? { |key, value| value.blank? } }
end
