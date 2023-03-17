class AddAdminIdToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :admin_id, :integer
  end
end
