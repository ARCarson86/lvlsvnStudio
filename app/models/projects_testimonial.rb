class ProjectsTestimonial < ActiveRecord::Base
	belongs_to :project
	belongs_to :testimonial
end