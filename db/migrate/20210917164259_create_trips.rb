class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.text :imageUrl
      t.text :tourDetailsText
      t.string :altitudeDifference
      t.string :season
      t.string :distanceByCar
      t.string :trekkingDistance
      t.string :cost

      t.timestamps
    end
  end
end
