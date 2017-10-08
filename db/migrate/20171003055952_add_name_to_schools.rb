class AddNameToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :name, :string
  end
end
