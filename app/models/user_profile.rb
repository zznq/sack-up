class UserProfile < ActiveRecord::Base
  belongs_to :user, :inverse_of => :user_profile

  validates_presence_of :user
  validates :url, :url => true, :allow_blank => true
end
