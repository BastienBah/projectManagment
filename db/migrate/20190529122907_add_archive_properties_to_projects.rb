class AddArchivePropertiesToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :is_archive, :boolean, default: false
  end
end
