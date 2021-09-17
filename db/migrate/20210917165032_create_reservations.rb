class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :user
      t.boolean :isPaid
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
