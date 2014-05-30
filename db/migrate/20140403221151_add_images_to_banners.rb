class AddImagesToBanners < ActiveRecord::Migration
  def self.up
    add_attachment :banners, :banner
  end

  def self.down
    remove_attachment :banners, :banner
  end
end
