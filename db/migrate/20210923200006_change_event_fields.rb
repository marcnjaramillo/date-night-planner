class ChangeEventFields < ActiveRecord::Migration[6.1]
  def change
    change_column_null :events, :name, true
    change_column_null :events, :address, true
    change_column_null :events, :price, true
    change_column_null :events, :rating, true
    change_column_null :events, :phone, true
    change_column_null :events, :image_url, true
    change_column_null :events, :url, true
    remove_column :events, :user_id, :integer
    add_reference :events, :user, null: false, foreign_key: true
  end
end
