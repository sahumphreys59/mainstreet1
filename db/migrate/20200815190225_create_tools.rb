class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
    	t.text :message
      t.timestamps
    end
  end
end
