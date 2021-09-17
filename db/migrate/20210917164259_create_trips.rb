class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
