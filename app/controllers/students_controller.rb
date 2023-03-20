class StudentsController < ApplicationController
  def index; end

  def show
    @admin = Admin.find(params[:home_admin_id])
    @student = Student.find(params[:id])
  end

  def homeshow
    @student = Student.find(params[:home_student_id])
  end

  def destroy
    @admin = Admin.find(params[:home_admin_id])
    @students = @admin.students
    @students.delete(Student.find(params[:id]))
    redirect_to home_admin_path(@admin), notice: 'Student was removed successfully .'
  end
end
