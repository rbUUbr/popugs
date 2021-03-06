# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.order(:status).page params[:page]
  end

  def show; end

  def new
    @task = Task.new
  end

  def edit; end

  def create
    task = Task::Create.call(name: task_params['name'])
    respond_to do |format|
      if task.errors.empty?
        format.html { redirect_to task, notice: 'Task was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    task = Task::Update.call(id: params[:id], name: task_params['name'], status: task_params['status'])
    respond_to do |format|
      if task.errors.empty?
        format.html { redirect_to task, notice: 'Task was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    Task::Delete.call(id: params[:id])
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:status, :name)
  end
end
