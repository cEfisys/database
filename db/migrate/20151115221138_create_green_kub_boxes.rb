class CreateGreenKubBoxes < ActiveRecord::Migration
  def change
    create_table :green_kub_boxes do |t|
      t.string :Serial_Number
      t.belongs_to :model
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
