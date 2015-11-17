class CreateActuatorTypes < ActiveRecord::Migration
  def change
    create_table :actuator_types do |t|
      t.string :name
      t.string :caracteristics

      t.timestamps null: false
    end
  end
end
