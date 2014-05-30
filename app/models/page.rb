class Page < ActiveRecord::Base
  attr_accessible :page

  validates_presence_of :page
  validates :page, :uniqueness => true
end