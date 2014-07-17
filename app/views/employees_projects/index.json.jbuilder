json.array!(@employees_projects) do |employees_project|
  json.extract! employees_project, :id
  json.url employees_project_url(employees_project, format: :json)
end
