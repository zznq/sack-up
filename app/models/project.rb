class Project < ActiveRecord::Base
  acts_as_taggable

  validates :name, :presence => true
  validates :description, :presence => true
end
