class CreateActuators < ActiveRecord::Migration
  def change
    create_table :actuators do |t|
      t.string :ref
      t.boolean :state
      t.belongs_to :actuator_type, index: true, null: false
      t.belongs_to :green_kub_box_toberemoved, index: true, null: false
      t.timestamps null: false
    end
  end
end
