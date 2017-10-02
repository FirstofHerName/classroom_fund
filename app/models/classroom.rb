class Classroom < ApplicationRecord
  belongs_to :school_id
  belongs_to :user_id
  has_many :projects
end
