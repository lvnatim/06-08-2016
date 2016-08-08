class AddMessages < ActiveRecord::Migration
  def change
    create_table :messages do | column |
      column.string :author
      column.string :content
    end
  end
end
