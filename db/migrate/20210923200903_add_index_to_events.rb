class AddIndexToEvents < ActiveRecord::Migration[6.1]
  def change
    add_index :events, [:user_id, :name], unique: true
  end
end
