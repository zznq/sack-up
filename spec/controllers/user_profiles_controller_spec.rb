require 'spec_helper'

describe UserProfilesController do
  let!(:user) { FactoryGirl.create :user }

  before do
    sign_in user
    @user_profile = FactoryGirl.create(:user_profile, :user => user)
  end

  describe 'GET show' do
    it 'should return profile for user' do
      get :show
    end
  end
end