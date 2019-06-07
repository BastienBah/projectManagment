class AddDetailsToVersions < ActiveRecord::Migration[5.2]
  def change
    add_column :versions, :status, :integer, default: 0
    add_column :versions, :format, :integer, default: 0
  end
end
