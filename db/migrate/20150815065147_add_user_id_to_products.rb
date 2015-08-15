class AddUserIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :user_id , :string
  end
end
