class EmployeesSkill < ActiveRecord::Base
	belongs_to :employee
	belongs_to :skill
end
