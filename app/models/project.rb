class Project < ApplicationRecord
  belongs_to :classroom, optional: true
  belongs_to :users
end
