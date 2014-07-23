class AddSlugsToTables < ActiveRecord::Migration
  def change
  	add_column :users, :slug, :string
  	add_column :employees, :slug, :string
  	add_column :posts, :slug, :string
  	add_column :projects, :slug, :string
  end
end
