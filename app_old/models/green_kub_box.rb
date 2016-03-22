class GreenKubBox < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :model, foreign_key: 'model_id'
  has_many :actuators
  has_many :sensors	
end
