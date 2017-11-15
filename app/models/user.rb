class User < ApplicationRecord
  has_secure_password
  
  has_many :classrooms
  has_many :projects, through: :classrooms

  validates :email, uniqueness: true
end
