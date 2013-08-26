class UserProfilesController < ApplicationController
  def show
    @user_profile = current_user.present? ? UserProfile.find(current_user) : UserProfile.find(params[:id])
  end
end
