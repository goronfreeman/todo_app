class Task < ActiveRecord::Base
  def index
    @tasks = current_user.tasks
  end

  def show
  end

  def new
    @task = current_user.task.build
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:item)
  end
end
