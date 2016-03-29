class CreateBodyFatDataPoints < ActiveRecord::Migration
  def change
    create_table :body_fat_data_points do |t|
      t.references :user
      t.integer :upper_measurement
      t.integer :mid_measurement
      t.integer :lower_measurement

      t.timestamps null: false
    end
  end
end
