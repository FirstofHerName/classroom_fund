class AddClassroomIdtoprojects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :classroom_id, :integer
  end
end
