# frozen_string_literal: true

# rubocop:enable
class TasksController < ApplicationController
  before_action :set_task, only: `%i(show edit update destroy)`

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task.create(params_task)
    redirect_to task_path(@task)
  end

  def edit; end

  def update
    @task.update(params_task)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to task_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def params_task
    params.require(:task).permit(:title, :details, :completed)
  end
end
