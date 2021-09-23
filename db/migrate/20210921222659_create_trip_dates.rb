class CreateTripDates < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_dates do |t|
      t.integer :trip_id, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end
