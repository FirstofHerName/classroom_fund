class AddTeacherToClassroom < ActiveRecord::Migration[5.1]
  def change
    add_column :classrooms, :teacher_name, :string
    add_column :classrooms, :room_number, :string
  end
end
