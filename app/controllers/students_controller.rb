class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @new_student = Student.create(first_name: "student[first_name]")
  end

end
