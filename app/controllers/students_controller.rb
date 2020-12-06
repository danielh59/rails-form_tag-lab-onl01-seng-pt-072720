class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.create(first_name: params[:post][:title], last_name: params[:post][:description])
      redirect_to posts_path
  end

end
