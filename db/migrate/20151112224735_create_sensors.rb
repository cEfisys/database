class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :ref
      t.boolean :state
      t.belongs_to :sensor_type, index: true, null: false
      t.belongs_to :green_kub_box_toberemoved, index: true, null: false
      t.timestamps null: false
    end
  end
end
