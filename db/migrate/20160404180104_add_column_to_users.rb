class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :born_on, :time
  end
end
