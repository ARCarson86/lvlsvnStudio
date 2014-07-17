json.array!(@projects_skills) do |projects_skill|
  json.extract! projects_skill, :id
  json.url projects_skill_url(projects_skill, format: :json)
end
