class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def create
    #Post.create(title: params[:post][:title], description: params[:post][:description])
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    #above params need to be params[:first_name],
    #not params[:student][:first_name]
    redirect_to students_path #after creating new student, user is redirected to index page to see all students.
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

end
