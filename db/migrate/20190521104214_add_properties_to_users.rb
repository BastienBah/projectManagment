class AddPropertiesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :business, :boolean, default: false
    add_column :users, :support, :boolean, default: false
    add_column :users, :developper, :boolean, default: false
  end
end
