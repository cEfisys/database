class Actuator < ActiveRecord::Base
  belongs_to :actuator_type, foreign_key: 'actuator_type_id'
  belongs_to :green_kub_box, foreign_key: 'green_kub_box_id'
end
