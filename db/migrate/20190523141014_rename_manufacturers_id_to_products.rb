class RenameManufacturersIdToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :prducts, :manufacturers_id, :manufacturer_id
  end
end
