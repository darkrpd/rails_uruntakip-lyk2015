class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username ,null:false
      t.string :email
      t.integer :age ,null:false
      t.string :city, null: false

      t.timestamps null: false
    end
  end
end
