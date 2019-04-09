class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student=Student.find(params[:id])
  end

  def new
    @new_student=Student.new
  end

  def create
    @student=Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    render :new
  end

end
