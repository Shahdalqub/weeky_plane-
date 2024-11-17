class SubtasksController < ApplicationController
  before_action :set_task

  def index
    @subtasks = @task.subtasks
  end

  def new
    @subtask = @task.subtasks.build
  end

  def create
    @subtask = @task.subtasks.build(subtask_params)
    if @subtask.save
      redirect_to task_subtasks_path(@task), notice: 'Subtask was successfully created.'
    else
      render :new
    end
  end

  def edit
    @subtask = @task.subtasks.find(params[:id])
  end

  def update
    @subtask = @task.subtasks.find(params[:id])
    if @subtask.update(subtask_params)
      redirect_to task_subtasks_path(@task), notice: 'Subtask was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @subtask = @task.subtasks.find(params[:id])
    @subtask.destroy
    redirect_to task_subtasks_path(@task), notice: 'Subtask was successfully deleted.'
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def subtask_params
    params.require(:subtask).permit(:title, :description, :completed)
  end
end

