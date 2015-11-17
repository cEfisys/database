class CreateSensorActuatorInfos < ActiveRecord::Migration
  def change
    create_table :sensor_actuator_infos do |t|
      t.belongs_to :sensor
      t.integer :value
      t.date :date

      t.timestamps null: false
    end
  end
end
