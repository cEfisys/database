class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :ref
      t.boolean :state
      t.belongs_to :sensor_type
      t.belongs_to :green_kub_box

      t.timestamps null: false
    end
  end
end
