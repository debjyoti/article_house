class Article < ActiveRecord::Base
  attr_accessible :content, :heading, :categories_attributes

  validates_presence_of :heading, :content

  has_many :comments, :dependent => :destroy
  has_many :categories

  accepts_nested_attributes_for :categories, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? }}

end
