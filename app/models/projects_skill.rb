class ProjectsSkill < ActiveRecord::Base
	belongs_to :project
	belongs_to :skill
end
