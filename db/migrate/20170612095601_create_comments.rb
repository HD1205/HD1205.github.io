class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

        t.string :comment
        t.belongs_to :freepost
        t.belongs_to :score
        t.belongs_to :user

      t.timestamps null: false
    end
  end
end
