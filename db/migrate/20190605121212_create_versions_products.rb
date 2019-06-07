class CreateVersionsProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :versions_products do |t|
      t.belongs_to :version, index: true
      t.belongs_to :prduct, index: true
    end
  end
end
