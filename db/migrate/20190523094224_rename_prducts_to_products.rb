class RenamePrductsToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_table :prducts, :products
  end
end
