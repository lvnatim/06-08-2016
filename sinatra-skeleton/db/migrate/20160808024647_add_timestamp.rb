class AddTimestamp < ActiveRecord::Migration
  def change
    change_table :messages do |column|
      column.timestamps
    end
  end
end
