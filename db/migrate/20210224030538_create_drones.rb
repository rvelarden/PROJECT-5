class CreateDrones < ActiveRecord::Migration[6.0]
  def change
    create_table :drones do |t|
      t.string :image
      t.string :model
      t.string :location
      t.integer :price_day
      t.integer :price_week
      t.integer :price_month
      t.integer :price_year
      t.integer :max_capacity
      t.integer :max_distance
      t.string :category

      t.timestamps
    end
  end
end
