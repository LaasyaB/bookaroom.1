class CreateReservationPriorities < ActiveRecord::Migration
  def change
    create_table :reservation_priorities do |t|
      t.string :title
      t.string :description
      t.references :reservation, index: true

      t.timestamps
    end
  end
end
