class RemoveTitleFromClassroom < ActiveRecord::Migration[5.1]
  def change
    remove_column :classrooms, :title, :string
  end
end
