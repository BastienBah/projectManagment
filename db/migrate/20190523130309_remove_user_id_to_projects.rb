class RemoveUserIdToProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :users_id
  end
end
