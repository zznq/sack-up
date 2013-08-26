require 'spec_helper'

describe 'As a user' do
  let!(:user) { FactoryGirl.create :user }

  before do
    FactoryGirl.create :user_profile, :user => user
    login(user, :user)
  end

  context 'when viewing my profile' do
    before do
      visit user_profile_path
    end

    it 'displays my name' do
      expect(page).to have_content user.user_profile.name
    end

    it 'displays my bio' do
      expect(page).to have_content user.user_profile.bio
    end

    it 'displays my location' do
      expect(page).to have_content user.user_profile.location
    end

    it 'displays my url' do
      expect(page).to have_content user.user_profile.url
    end
  end
end