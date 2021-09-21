class CreateTripDates < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_dates do |t|
      t.integer :trip_id
      t.date :date

      t.timestamps
    end
  end
end
