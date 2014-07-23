class Employee < ActiveRecord::Base
	has_and_belongs_to_many :projects
	has_and_belongs_to_many :skills

	def full_name
		"#{self.first_name} #{self.last_name}"
	end
end
