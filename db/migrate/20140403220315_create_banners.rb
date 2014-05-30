class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.string :header
      t.string :description
      t.string :page

      t.timestamps
    end
  end

  def self.down
    drop_table :banners
  end
end
