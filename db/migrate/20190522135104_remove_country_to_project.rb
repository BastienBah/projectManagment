class RemoveCountryToProject < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :location
  end
end
