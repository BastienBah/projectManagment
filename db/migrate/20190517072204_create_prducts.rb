class CreatePrducts < ActiveRecord::Migration[5.2]
  def change
    create_table :prducts do |t|
      t.string :name
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
