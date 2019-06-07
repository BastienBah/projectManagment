class RenameProductsToPrducts < ActiveRecord::Migration[5.2]
  def change
    rename_table :products, :prducts
  end
end
