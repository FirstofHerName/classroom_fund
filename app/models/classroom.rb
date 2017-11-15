class Classroom < ApplicationRecord
  belongs_to :user
  belongs_to :school, optional: true
  has_many :projects
end
