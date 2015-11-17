class GreenKubBox < ActiveRecord::Base
  belongs_to :user
  belongs_to :model
  has_many :actuators
  has_many :sensors
end
