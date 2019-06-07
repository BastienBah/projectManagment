class AddCountryToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :country, :string
  end
end
