json.array!(@employees_skills) do |employees_skill|
  json.extract! employees_skill, :id
  json.url employees_skill_url(employees_skill, format: :json)
end
