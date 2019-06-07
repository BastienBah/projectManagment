class RenameProductsidToProductid < ActiveRecord::Migration[5.2]
  def change
    rename_column :versions, :prducts_id, :prduct_id
  end
end
