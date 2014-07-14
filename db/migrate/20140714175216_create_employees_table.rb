class CreateEmployeesTable < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :first_name
    	t.string :middle_initial
    	t.string :last_name
    	t.string :job_title
    	t.text :bio
    	t.string :email
    	t.datetime :hire_date
    	t.timestamps
    end
  end
end
