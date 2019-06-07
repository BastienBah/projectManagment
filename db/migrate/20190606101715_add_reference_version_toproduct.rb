class AddReferenceVersionToproduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :prducts, :versions, foreign_key: true
  end
end
