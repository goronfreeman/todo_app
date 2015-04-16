class TasksController < ApplicationController
  def index
  end

  def show
    Task.find(params[:id])
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

  def ajax_set_complete
    begin
      task = current_user.tasks.find(params[:id])
      task.update_attributes(complete: true)

      render json: { success: true }, status: :success
    rescue ActiveRecord::RecordNotFound
      return head(:bad_request)
    end
  end

  def destroy
  end

  def complete
    tasks = current_user.tasks.complete

    render json: tasks
  end

  def incomplete
    tasks = current_user.tasks.incomplete

    tasks = tasks.each_with_object([]) do |task, arr|
      task_attr = task.attributes
      task_attr["complete_path"] = ajax_set_complete_task_path(task)

      arr << task_attr
    end

    render json: tasks
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
end
