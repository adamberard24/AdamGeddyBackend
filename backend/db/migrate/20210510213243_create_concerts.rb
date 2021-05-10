class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.time :time
      t.date :date
      t.string :venue
      t.integer :cost
      t.integer :artist_id
    end
  end
end
