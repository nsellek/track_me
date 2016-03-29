class CreateWightTrackers < ActiveRecord::Migration
  def change
    create_table :wight_trackers do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :weight

      t.timestamps null: false
    end
  end
end
