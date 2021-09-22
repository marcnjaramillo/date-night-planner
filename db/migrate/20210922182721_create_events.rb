class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name, null: false 
      t.string :address, null: false 
      t.integer :price, null: false 
      t.integer :rating, null: false
      t.string :phone, null: false 
      t.string :image_url, null: false
      t.string :url, null: false 
      t.integer :user_id, null: false 
      t.timestamps
    end

    add_index :events, :user_id 
  end
end
