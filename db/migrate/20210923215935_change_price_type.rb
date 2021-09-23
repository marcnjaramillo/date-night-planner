class ChangePriceType < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :price, :integer
    add_column :events, :price, :string
  end
end
