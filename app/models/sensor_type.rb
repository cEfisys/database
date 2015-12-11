class SensorType < ActiveRecord::Base
  has_many :sensors
  validates :name, presence: true
  validates :caracteristics, presence: true
  validates :unit, presence:true
end
