require 'spec_helper'

describe UserProfilesController do
  let!(:user) { FactoryGirl.create :user }
  before do
    @user_profile = FactoryGirl.create(:user_profile, :user => user)
    sign_in user
  end

  describe 'GET #show' do
    before do
      get :show
    end

    it 'renders the :show view' do
      response.should render_template :show
    end

    it 'assigns the requested user profile to @user_profile' do
      assigns(:user_profile).should eq(user.user_profile)
    end
  end

  describe 'GET #edit' do
    before do
      get :edit
    end

    it 'renders the :edit view' do
      response.should render_template :edit
    end

    it 'assigns the requested user profile to @user_profile' do
      assigns(:user_profile).should eq(user.user_profile)
    end
  end
end