class SensorType < ActiveRecord::Base
  has_many :sensor, foreign_key: 'sensor_type_id'
  validates :name, presence: true
  validates :caracteristics, presence: true
  validates :unit, presence:true
end
