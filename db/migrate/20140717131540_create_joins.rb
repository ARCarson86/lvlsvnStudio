class CreateJoins < ActiveRecord::Migration
  def change
    create_table :projects_testimonials do |t|
    	t.integer :project_id
    	t.integer :testimonial_id
      t.timestamps
    end
    create_table :projects_skills do |t|
    	t.integer :project_id
    	t.integer :skill_id
      t.timestamps
    end
  end
end
