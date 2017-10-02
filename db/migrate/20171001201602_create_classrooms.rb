class CreateClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|
      t.integer :school_id
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
