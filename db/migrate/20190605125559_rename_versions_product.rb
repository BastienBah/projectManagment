class RenameVersionsProduct < ActiveRecord::Migration[5.2]
  def change
    rename_table :versions_products, :prducts_versions
  end
end
