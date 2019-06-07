class RemovePropertiesToProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :prducts, :status
    remove_column :prducts, :format
  end
end
