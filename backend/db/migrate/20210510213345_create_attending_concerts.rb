class CreateAttendingConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :attending_concerts do |t|
      t.integer :fan_id
      t.integer :concert_id
    end
  end
end
