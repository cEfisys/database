class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :actuators, :actuator_types
    add_foreign_key :actuators, :green_kub_boxes
    add_foreign_key :sensors,   :sensor_types
    add_foreign_key :sensors,   :green_kub_boxes
    add_foreign_key :sensor_actuator_infos, :sensors
    add_foreign_key :green_kub_boxes, :models
    add_foreign_key :green_kub_boxes, :users
  end
end
