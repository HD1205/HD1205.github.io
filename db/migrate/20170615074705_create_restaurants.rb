class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      
      t.string :restaurantname
      t.string :address
      t.string :tel
      t.string :photoname
      t.string :mapname
      t.string :foodmenu

      t.timestamps null: false
    end
  end
end
