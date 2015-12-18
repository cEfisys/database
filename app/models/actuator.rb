class Actuator < ActiveRecord::Base
  belongs_to :actuator_type
  belongs_to :green_kub_box_toberemoved
end
