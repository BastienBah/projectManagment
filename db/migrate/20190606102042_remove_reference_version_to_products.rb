class RemoveReferenceVersionToProducts < ActiveRecord::Migration[5.2]
  def self.down
    remove_column :prducts, :versions_id
  end
end
