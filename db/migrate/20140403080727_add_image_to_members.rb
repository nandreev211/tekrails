class AddImageToMembers < ActiveRecord::Migration
  def self.up
    add_attachment :members, :image
    add_attachment :members, :image_sel
  end

  def self.down
    remove_attachment :members, :image
    remove_attachment :members, :image_sel
  end
end
