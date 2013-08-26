require 'spec_helper'

describe 'As a user' do
  before do
    @user = FactoryGirl.create :user
    FactoryGirl.create :user_profile, :user => @user
    login(@user, :user)
  end

  describe 'when viewing my profile' do
    before do
      visit user_profile_path
    end

    it 'should display my name' do
      expect(page).to have_content @user.user_profile.name
    end

    it 'should display my bio' do
      expect(page).to have_content @user.user_profile.bio
    end

    it 'should display my location' do
      expect(page).to have_content @user.user_profile.location
    end

    it 'should display my url' do
      expect(page).to have_content @user.user_profile.url
    end
  end
end