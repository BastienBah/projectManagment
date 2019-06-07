class AddPropertiesToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :prducts, :type, :product_type
    add_column :prducts, :has_mib, :boolean
    add_column :prducts, :status, :integer, default: 0
    add_column :prducts, :format, :integer, default: 0
  end
end
