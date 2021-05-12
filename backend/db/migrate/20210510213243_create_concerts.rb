class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
    
      t.string :day
      t.string :venue
      t.integer :cost
      t.integer :artist_id
    end
  end
end
