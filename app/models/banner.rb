class Banner < ActiveRecord::Base
  attr_accessible :banner, :header, :description, :page

  has_attached_file :banner,
                    :styles => { :medium => "330x260", :thumb => "70x50" }

  validates_attachment_content_type :banner, content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'application/octet-stream']
  validates_attachment_size :banner, less_than: 1000.kilobytes

  validates_presence_of :header, :description, :page, :banner
end