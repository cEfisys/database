class CreateSensorActuatorInfos < ActiveRecord::Migration
  def change
    create_table :sensor_actuator_infos do |t|
      t.integer :value
      t.date :date
      t.belongs_to :sensor, index: true, null: false
      t.timestamps null: false
    end
  end
end
