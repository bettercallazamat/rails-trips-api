class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :user
      t.boolean :isPaid

      t.timestamps
    end
  end
end
