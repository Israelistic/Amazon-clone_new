class ChangeProductTableColumnPriceValueType < ActiveRecord::Migration[5.2]
  def up
      change_column :products, :price_in_cents, :decimal
  end
  def down
      change_column :products, :price_in_cents, :integer
  end
end
