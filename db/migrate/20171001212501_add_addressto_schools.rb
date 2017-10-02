class AddAddresstoSchools < ActiveRecord::Migration[5.1]
  add_column :schools, :address, :string
end
