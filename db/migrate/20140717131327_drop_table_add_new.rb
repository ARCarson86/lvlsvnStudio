class DropTableAddNew < ActiveRecord::Migration
  def change
  	drop_table :users_tables
  	create_table :users do |t|
    	t.string :username
    	t.timestamps
    end
  end
end
