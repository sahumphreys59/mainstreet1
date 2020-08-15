class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.text :title
    	t.text :message
    	t.date :post_date
      t.timestamps
    end
  end
end
