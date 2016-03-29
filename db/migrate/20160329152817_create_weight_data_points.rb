class CreateWeightDataPoints < ActiveRecord::Migration
  def change
    create_table :weight_data_points do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :weight

      t.timestamps null: false
    end
  end
end
