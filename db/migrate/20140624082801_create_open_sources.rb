class CreateOpenSources < ActiveRecord::Migration
  def self.up
    create_table :open_sources do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :open_sources
  end
end