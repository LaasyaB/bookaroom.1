class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :location
      t.integer :capacity
      t.integer :room_number
      t.boolean :available

      t.timestamps
    end
  end
end
