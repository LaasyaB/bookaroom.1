class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :room, index: true
      t.references :user, index: true
      t.datetime :reserve_from
      t.datetime :reserve_upto
      t.text :reservation_details
      t.string :status

      t.timestamps
    end
  end
end
