class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :imageUrl, null: false
      t.text :tourDetailsText, null: false
      t.string :altitudeDifference, null: false
      t.string :season, null: false
      t.string :distanceByCar, null: false
      t.string :trekkingDistance, null: false
      t.string :cost, null: false

      t.timestamps
    end
  end
end
