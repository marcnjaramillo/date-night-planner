class RemoveContraintsFromEvents < ActiveRecord::Migration[6.1]
  def change 
    change_column_null :events, :name, true
    change_column_null :events, :address, true
    change_column_null :events, :price, true
    change_column_null :events, :rating, true
    change_column_null :events, :phone, true
    change_column_null :events, :image_url, true
    change_column_null :events, :url, true
    change_column_null :events, :user_id, true
  end
end
