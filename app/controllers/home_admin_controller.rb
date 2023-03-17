class HomeAdminController < ApplicationController
  before_action :authenticate_admin!

  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
    @students = @admin.students
  end
end
