class RemoveCountryToClient < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :country
  end
end
