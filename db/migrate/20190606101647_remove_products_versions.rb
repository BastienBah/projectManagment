class RemoveProductsVersions < ActiveRecord::Migration[5.2]
  def change
    drop_table :prducts_versions
  end
end
