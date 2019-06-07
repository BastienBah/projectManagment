class AddInstallationDateAndRenameLicenceToProjects < ActiveRecord::Migration[5.2]
  def change
    rename_column :projects, :has_licence, :installed
    add_column :projects, :installation_date, :date
  end
end
