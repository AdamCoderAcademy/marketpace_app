class RemoveUserFromProduct < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :user_id, :integer
  end
end
