class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    new_task = Task.new(task_params)
    new_task.save
    redirect_to tasks_path
  end

  def show
    # @task = Task.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
