class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.string :name
      t.float :height
      t.float :chest
      t.float :waist
      t.float :hips
      t.float :thigh
      t.float :calf
      t.float :inseam
      t.float :upper_arm_circumference
      t.float :arm_length
      t.float :shoulder_to_shoulder_width
      t.float :armpit_to_waist
      t.float :waist_to_hip

      t.timestamps
    end
  end
end
