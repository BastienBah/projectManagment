class RenameProjectsPrducts < ActiveRecord::Migration[5.2]
  def change
    rename_table :projects_products, :prducts_projects
  end
end
