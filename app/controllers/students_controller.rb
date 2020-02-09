class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new
    params
  end
  
  def create
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end


end
