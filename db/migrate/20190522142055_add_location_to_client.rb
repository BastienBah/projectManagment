class AddLocationToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :location, :string
  end
end
