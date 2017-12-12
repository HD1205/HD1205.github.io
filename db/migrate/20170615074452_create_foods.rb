class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      
      t.string :foodname

      t.timestamps null: false
    end
  end
end
