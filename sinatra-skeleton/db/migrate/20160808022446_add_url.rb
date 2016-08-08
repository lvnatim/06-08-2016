class AddUrl < ActiveRecord::Migration
  def change
    change_table :messages do | column |
      column.string :url
    end
  end
end
