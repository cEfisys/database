class CreateActuators < ActiveRecord::Migration
  def change
    create_table :actuators do |t|
      t.string :ref
      t.boolean :state
      t.belongs_to :actuators_type
      t.belongs_to :green_kub_box

      t.timestamps null: false
    end
  end
end
