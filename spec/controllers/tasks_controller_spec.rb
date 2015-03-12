require 'rails_helper'

describe TasksController do
  # Sign-in user
  before(:each) do
    @user = User.create!(email: 'foo@bar.com', password: 'password', password_confirmation: 'password')
    sign_in(@user)
  end

  # Test index action
  context '#index' do
    before(:each) do
      get :index
    end

    it { should render_template(:index) }
  end

  # Test new action
  context '#new' do
    before(:each) do
      get :new
    end

    it { should render_template(:new) }
  end

  # Test create action
  context '#create' do
    before(:each) do
      @task_attr = {
        name: 'test'
      }
    end

    context 'when successful' do
      before(:each) do
        post :create, task: @task_attr
      end

      it { should redirect_to(tasks_path) }
    end

    context 'when unsucessful' do
      before(:each) do
        @task_attr.merge!(name: nil)
        post :create, task: @task_attr
      end

      it { should render_template(:new) }
    end
  end

  # Test update action
  context '#set_complete' do
    before(:each) do
      @task = @user.tasks.create(name: 'test')
      @task.save
    end

    context 'when marked complete' do
      before(:each) do
        put :set_complete, id: @task.id
      end
      context 'when successful' do
        it { should be_truthy }
        # it { should set_flash[:success] }
        it { should redirect_to tasks_path }
      end
      context 'when unsucessful' do
        # it { should set_flash[:error] }
      end
    end
  end
end
