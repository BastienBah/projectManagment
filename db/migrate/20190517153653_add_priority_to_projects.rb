class AddPriorityToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :priority, :integer, default: 0
  end
end
