class AddPortfolioToWorks < ActiveRecord::Migration
  def self.up
    add_attachment :works, :portfolio
  end

  def self.down
    remove_attachment :works, :portfolio
  end
end
