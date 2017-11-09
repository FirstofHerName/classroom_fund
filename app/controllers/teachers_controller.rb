class TeachersController < ApplicationController
  has_many :classrooms
  has_secure_password
  validates :email, uniqueness: true

end
