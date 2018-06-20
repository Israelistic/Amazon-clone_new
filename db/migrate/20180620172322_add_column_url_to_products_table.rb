class AddColumnUrlToProductsTable < ActiveRecord::Migration[5.2]
  def up
      add_column :products, :url, :string
  end
  def down
    remove_column :products, :url, :string
  end
end
