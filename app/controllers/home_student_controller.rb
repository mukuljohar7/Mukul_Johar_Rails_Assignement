class HomeStudentController < ApplicationController
  before_action :authenticate_student!

  def index
  end

  def show
    @students = Student.find(params[:id])
    @admins = @students.admins
  end
end
