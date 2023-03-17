class CreateAdminTasksJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :tasks, :admins
  end
end
