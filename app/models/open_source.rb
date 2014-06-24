class OpenSource < ActiveRecord::Base
  attr_accessible :title, :description

  validates_presence_of :title, :description
  validates_length_of :title, :maximum => 60
  validates_length_of :description, :maximum => 400
end