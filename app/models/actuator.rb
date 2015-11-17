class Actuator < ActiveRecord::Base
  has_and_belongs_to_many :actuator_type
  has_and_belongs_to_many :green_kub_box
end
