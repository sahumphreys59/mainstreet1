class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
  	remove_column :posts, :post_id
  end
end
