class SchoolsController < ApplicationController
  
  def index
    @schools = School.all
  end

  def new
    @schools = School.new
  end

  def create
    @schools = School.new(
                          name: params[:name],
                          address: params[:address],
                          )
  end

  def show
    @schools = School.find_by(id: params[:id])
  end

  def edit
    @schools = School.find_by(id: params[:id])
  end

  def update
    @schools = School.find_by(id: params[:id])
  end

  def destroy
    school = School.find_by(id: params[:id])
    school.destroy
    flash[:warning] = "School Deleted"
    redirect_to "/"
  end

end
