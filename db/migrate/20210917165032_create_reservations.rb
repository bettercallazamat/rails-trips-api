class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :reservor_id
      t.integer :reserved_trip_date_id

      t.timestamps
    end
  end
end
