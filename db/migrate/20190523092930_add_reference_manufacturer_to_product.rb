class AddReferenceManufacturerToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :manufacturers, :prducts, foreign_key: true
  end
end
