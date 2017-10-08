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

   if @schools.save
      flash[:success] = "School Added"
      redirect_to "/"
   end

  end

  def show
    @school = School.find(params[:id])
  end

  def edit
    @schools = School.find_by(id: params[:id])
  end

  def update
    @school = School.find_by(id: params[:id])
    @school.assign.attributes(
                              name: params[:name],
                              address: params[:address]
                              )
  if @school.save
    flash[:sucess] = "School updated"
    redirect_to "/schools/#{ @school.id }"
  end
end

  def destroy
    school = School.find_by(id: params[:id])
    school.destroy
    flash[:warning] = "School Deleted"
    redirect_to "/"
  end

end
