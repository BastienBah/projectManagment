class AddAccesPropertiesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :prducts, :has_access, :boolean
  end
end
