class GreenKubBox < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user_id', primary_key: 'user_id'
  belongs_to :model, foreign_key: 'model_id', primary_key: 'model_id'
  has_many :actuators
  has_many :sensors
  self.primary_key = 'green_kub_box_id'
end
