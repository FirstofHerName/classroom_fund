class ProjectsController < ApplicationController
   def index
    classroom_id = params[:classroom_id]
    @projects = Project.where(classroom_id: classroom_id)
  end

  def new
    @classroom = Classroom.find(params[:classroom_id])
    @projects = Project.new
  end

  def create
    @classroom = Classroom.find(params[:classroom_id])
    @project = Project.new(
                          name: params[:name],
                          details: params[:details],
                          classroom_id: params[:classroom_id]
                          )

   if @project.save
      flash[:success] = "Project Added"
      redirect_to "/classrooms/#{@classroom.id}/projects/#{@project.id}"
   end

  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @projects = Project.find_by(id: params[:id])
  end

  def update
    @classroom = Classroom.find(params[:classroom_id])
    @project = Project.find_by(id: params[:id])
    @project.assign.attributes(
                              name: params[:name],
                              details: params[:details],
                              classroom_id: params[:classroom_id]
                              )
  if @project.save
    flash[:sucess] = "Project updated"
    redirect_to "/classrooms/#{@classroom.id}/projects/#{ @project.id }"
  end
end

  def destroy
    project = Project.find_by(id: params[:id])
    classroom = project.classroom
    project.destroy
    flash[:warning] = "Project Deleted"
    redirect_to "/classrooms/#{classroom.id}"
  end
  
end
