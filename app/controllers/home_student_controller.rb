class HomeStudentController < ApplicationController
  before_action :authenticate_student!

  def index
    @students = Student.find(params[:id])
  end

  def show
    @students = Student.find(params[:id])
    @admins = @students.admins
  end
end
