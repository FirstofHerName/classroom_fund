class Project < ApplicationRecord
  belongs_to :classroom, optional: true
  has_one :user, through: :classroom
end
