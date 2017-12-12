class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|

      t.string :content
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
