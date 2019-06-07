class AddSupportFieldsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :has_licence, :boolean
    add_column :projects, :licence_type, :integer, default: 0
    add_column :projects, :licence_date_start, :date
    add_column :projects, :licence_date_end, :date
    add_column :projects, :has_teamviewer, :boolean
    add_column :projects, :teamviewer_pass, :string
    add_column :projects, :teamviewer_login, :string
  end
end
