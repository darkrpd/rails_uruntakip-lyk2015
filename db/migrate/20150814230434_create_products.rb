class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.decimal :price 
      t.timestamps null: false
    end
  end
end
