class DeleteProductIdToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :product_id , :string
  end
end
