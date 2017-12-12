class CreateFreeposts < ActiveRecord::Migration
  def change
    create_table :freeposts do |t|
      
          t.string :title
        	t.string :content
        	t.belongs_to :user

      t.timestamps null: false
    end
  end
end
