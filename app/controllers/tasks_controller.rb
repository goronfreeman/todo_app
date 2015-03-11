class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def show
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(complete: true)
    redirect_to tasks_path
    else
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
end
