class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :reservor_id, null: false
      t.integer :reserved_trip_date_id, null: false

      t.timestamps
    end
  end
end
