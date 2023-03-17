class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  def index
    @admin = Admin.find(params[:admin_id])
    @task = @admin.tasks
  end

  def show
    @admin = Admin.find(params[:admin_id])
  end

  def new
    @admin = Admin.find(params[:admin_id])
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
    @admin = @task.admin
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to task_url(@task), notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to @task, notice: "Task was deleted successfully ."
  end

  def studenttasks
    @students = Student.find(params[:id])
    @admins = @students.admins
  end

  def singletask
    @students = Student.find(params[:id])
    @admins = @students.admins
    @admin = @admins.find(params[:admin_id])
    @task = @admin.tasks
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :tags, :admin_id)
  end
end
