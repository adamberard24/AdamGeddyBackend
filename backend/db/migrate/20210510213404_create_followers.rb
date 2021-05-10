class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.integer :fan_id
      t.integer :artist_id
    end
  end
end
