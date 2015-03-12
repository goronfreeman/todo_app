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
  end

  def set_complete
    @task = Task.find(params[:id])
    if @task.update_attributes(complete: true)
      # flash[:success] = 'Marked complete'
      redirect_to tasks_path
    else
      # flash[:error] = 'Could not mark as complete'
      redirect_to(tasks_path)
    end
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
end
