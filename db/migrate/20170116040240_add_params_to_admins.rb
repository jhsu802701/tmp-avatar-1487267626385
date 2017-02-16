class AddParamsToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :last_name, :string
    add_column :admins, :first_name, :string
    add_column :admins, :username, :string
    add_column :admins, :super, :boolean
  end
end
