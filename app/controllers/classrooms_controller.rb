class ClassroomsController < ApplicationController



  def index
    @classrooms = Classroom.all


  end

  def new
    @classrooms = Classroom.new
  end

  def create
    @classrooms = Classroom.new(
                                teacher_name: params[:teacher_name],
                                room_number: params[:room_number],
                                school_id: params[:school_id],
                                user_id: params[:user_id]
                                )

    if classrooms.save
      flash[:success] = "Classroom Added"
      redirect_to "/classrooms"
    end
  end

  def show
    @classroom = Classroom.find_by(id: params[:id])
  end

  def edit
    @classrooms = Classroom.find_by(id: params[:id])
  end

  def update
    @classroom = Classroom.find_by(id: params[:id])
    @classroom.assign.attributes(
                              teacher_name: params[:teacher_name],
                              room_number: params[:room_number],
                              school_id: params[:school_id],
                              user_id: params[:user_id]
                              )
  if @classroom.save
    flash[:sucess] = "Classroom updated"
    redirect_to "/classrooms/#{ @classroom.id }"
  end
end

  def destroy
    classroom = Classroom.find_by(id: params[:id])
    classroom.destroy
    flash[:warning] = "Classroom Deleted"
    redirect_to "/"
  end

end

