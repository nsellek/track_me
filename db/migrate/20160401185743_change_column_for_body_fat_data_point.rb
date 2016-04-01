class ChangeColumnForBodyFatDataPoint < ActiveRecord::Migration
  def change
    change_column :body_fat_data_points, :upper_measurement, :float
    change_column :body_fat_data_points, :mid_measurement, :float
    change_column :body_fat_data_points, :lower_measurement, :float
  end
end
