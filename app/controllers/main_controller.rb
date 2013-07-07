class MainController < ApplicationController
  def index
    @student = Student.new
  end

  def show
    @student = Student.all
  end

  def create
    @student = Student.new(params[:student])
    @student.save
    redirect_to main_show_path
  end
end
