class Article < ActiveRecord::Base
  attr_accessible :content, :heading

  validates_presence_of :heading, :content

  has_many :comments, :dependent => :destroy
end
