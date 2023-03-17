class CreateAdminsStudentsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :admins, :students 
  end
end
