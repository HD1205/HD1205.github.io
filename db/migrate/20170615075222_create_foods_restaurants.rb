class CreateFoodsRestaurants < ActiveRecord::Migration
  def change
    create_table :foods_restaurants do |t|
      
      t.integer :food_id
      t.integer :restaurant_id
        
      t.timestamps null: false
    end
  end
end
