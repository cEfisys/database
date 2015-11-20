class CreateGreenKubBoxes < ActiveRecord::Migration
  def change
    create_table :green_kub_boxes do |t|
      t.string :Serial_Number
      t.belongs_to :model, index: true, null: false
      t.belongs_to :user, index: true, null: false
      t.timestamps null: false
    end
  end
end
