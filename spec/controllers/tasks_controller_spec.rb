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
end
