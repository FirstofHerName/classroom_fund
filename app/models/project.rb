class Project < ApplicationRecord
  belongs_to :classroom, optional: true
  
end
