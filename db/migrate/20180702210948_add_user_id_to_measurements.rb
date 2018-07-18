class AddUserIdToMeasurements < ActiveRecord::Migration[5.2]
  def change
    add_column :measurements, :user_id, :integer
    add_column :patterns, :measurement_id, :integer
  end
end
