include Warden::Test::Helpers

module AuthenticationHelper
  def login(user, scope)
    login_as user, :scope => scope
  end

  def login_user!
    login FactoryGirl.create(:user), :user
  end
end