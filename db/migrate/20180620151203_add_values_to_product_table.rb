class AddValuesToProductTable < ActiveRecord::Migration[5.2]
  def change
      change_table :products do |t|

          t.string  :name
          t.text    :desciption
          t.integer :price_in_cents

      end
  end
end
