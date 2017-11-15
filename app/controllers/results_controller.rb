class ResultsController < ApplicationController

  def index
    search_term = params[:search]
    if search_term
      @schools = School.where("name iLIKE ?", "%#{search_term}%")
      @classrooms = Classroom.where("teacher_name iLIKE ?", "%#{search_term}%")
    else
      @schools = School.all.order("created_at DESC")
      @classrooms = Classroom.all.order("created_at DESC")
    end
  end
end
