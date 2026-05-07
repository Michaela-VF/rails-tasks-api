class TasksController < ApplicationController
  def index
    if params[:status].present?
      tasks = Task.where(status: params[:status].to_s.downcase)
    else
      tasks = Task.all
    end
    render json: tasks
  end

  def show
    task = Task.find(params[:id])
    render json: task
  end

  def create
    task = Task.new(task_params)

    if task.save
      render json: task, status: :created
    else
      render json: { errors: task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :status)
  end
end
