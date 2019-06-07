class CreateProjectsProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_products do |t|
      t.belongs_to :project, index: true
      t.belongs_to :prduct, index: true
    end
  end
end
