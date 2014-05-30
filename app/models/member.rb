class Member < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :position, :email, :image, :image_sel

  has_attached_file :image,
                    :styles => { :medium => "275x275#", :thumb => "75x75#" }

  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'application/octet-stream']
  validates_attachment_size :image, less_than: 500.kilobytes

  has_attached_file :image_sel,
                    :styles => { :medium => "275x275#", :thumb => "75x75#" }

  validates_attachment_content_type :image_sel, content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'application/octet-stream']
  validates_attachment_size :image_sel, less_than: 500.kilobytes

  validates :email, :uniqueness => true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  validates_presence_of :first_name, :last_name, :position, :email, :image, :image_sel

  def member_title
    self.first_name + " " + self.last_name
  end
end