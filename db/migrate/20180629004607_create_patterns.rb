class CreatePatterns < ActiveRecord::Migration[5.2]
  def change
    create_table :patterns do |t|
      t.float :yard
      t.string :fabric
      t.string :clothing

      t.timestamps
    end
  end
end
