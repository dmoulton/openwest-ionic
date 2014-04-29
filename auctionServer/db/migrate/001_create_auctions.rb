class CreateAuctions < ActiveRecord::Migration
  def self.up
    create_table :auctions do |t|
      t.string :title
      t.text :description
      t.string :image_src
      t.float :increment_bid
      t.float :current_bid
      t.timestamps
    end
  end

  def self.down
    drop_table :auctions
  end
end
